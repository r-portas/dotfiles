#!/usr/bin/env node

var cheerio = require('cheerio');
var got = require('got');
var Table = require('easy-table');

var config = {
    url: "http://jp.translink.com.au/travel-information/network-information/stops-and-stations/stop/coorparoo-junction"
};

/**
 * Models a bus stop
 */
class BusStop {
    constructor(url) {
        this.url = url;
        this.filters = [];
        this.timetable = [];
        this.direction = "";
        this.stopName = "";
    }

    setFilters(filters) {
        this.filters = filters;
    }

    setStopName(name) {
        this.stopName = name;
    }

    /**
     * Sets the direction of the bus
     * Can either be Inbound or Outbound
     */
    setDirection(direction) {
        this.direction = direction;
    }

    getBuses() {
        var scope = this;
        var promise = new Promise(function(resolve, reject) {
            got(scope.url)
                .then(function(response) {
                    // Parse it with cheerio
                    var $ = cheerio.load(response.body);
                    var buses = $('#timetable > table > tbody > tr');
                    // Clear the old timetable
                    scope.timetable = [];
                    
                    buses.each(function() {
                        var scheduledBus = {};
                        var children = $(this).children();
                        
                        scheduledBus.route = $(children[0]).text().trim();
                        scheduledBus.direction = $(children[1]).text().trim();
                        scheduledBus.arrivalTime = $(children[2]).text().trim();
                        scheduledBus.eta = $(children[3]).text().trim().split('\n')[0].trim();

                        if (scope.direction == "" || 
                            scope.direction == scheduledBus.direction) {
                            // Filter the bus routes
                            if (scope.filters == []) {
                                scope.timetable.push(scheduledBus);
                            } else {
                                if (scope.filters.includes(scheduledBus.route)) {
                                    scope.timetable.push(scheduledBus);
                                }
                            }
                        }
                        
                    });

                    resolve();

                }).catch(function(err) {
                    reject(err);
                });
        });

        return promise;
    }

    printTimetable() {
        var table = new Table;
        
        console.log(this.stopName);

        this.timetable.forEach(function(item) {
            table.cell('Route', item.route);
            table.cell('Direction', item.direction);
            table.cell('Arrival Time', item.arrivalTime);
            table.cell('ETA', item.eta);
            table.newRow();
        });

        console.log(table.toString());
    }

    /**
     * Updates bus information then prints
     */
    run() {
        var scope = this;
        this.getBuses().then(function() {
            scope.printTimetable();
        });
    }
}

bus = new BusStop(config.url);
bus.setStopName("Coorparoo Junction");
bus.setFilters(['209', '222']);
bus.setDirection('Inbound');
bus.run()
