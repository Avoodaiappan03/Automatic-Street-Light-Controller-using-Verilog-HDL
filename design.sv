`timescale 1ns/1ps

module tb_automatic_street_light;

    reg light_sensor;
    wire street_light;

    // Instantiate the design under test
    automatic_street_light uut (
        .light_sensor(light_sensor),
        .street_light(street_light)
    );

    initial begin

        $dumpfile("street_light.vcd");
        $dumpvars(0, tb_automatic_street_light);

        $display("Time\tSensor\tStreet Light");
        $monitor("%0t\t%b\t%b",
                 $time, light_sensor, street_light);

        // Test 1: Darkness
        light_sensor = 0;
        #10;

        // Test 2: Daylight
        light_sensor = 1;
        #10;

        // Test 3: Darkness again
        light_sensor = 0;
        #10;

        // Test 4: Daylight again
        light_sensor = 1;
        #10;

        $finish;

    end

endmodule