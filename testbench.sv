module automatic_street_light (
    input  wire light_sensor,
    output wire street_light
);

    // Turn ON the street light during darkness
    assign street_light = ~light_sensor;

endmodule
