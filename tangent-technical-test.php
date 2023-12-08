<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tangent Technical Test</title>
</head>
<body>
    <h1>Tangent Technical Test</h1>
    <h3>Q. No. 1: In object-orientated programming, what is the difference between a class and an object?</h3>
    <h4>Answer:</h4>
    <p><strong>Classes</strong> and <strong>objects</strong> are two main aspects of object-oriented programming. A class is a self-contained, independent set of variables, methods and behaviours which work together to perform specific logical tasks, while objects are individual instances of the class.<br />
    <strong>Class:</strong></p>

    <p>A class&nbsp;is like a <strong>blueprint </strong>for an object,&nbsp;which includes local methods and data. A class can be declared with the <strong>class </strong>keyword followed by the <strong>name </strong>of the class and curly braces e,g.</p>
    <pre>
        <code class="language-php">
            &lt;?php
            class Vehicle
            {
                // Declare  properties
                public $make = '';
                private $transmission = '';
                
                // Constructor
                public function __construct($transmission) {
                    echo 'Created an object of MyClass';
                    $this-&gt;transmission = $transmission ;
                }
                
                
                // Method to get the make
                public function getMake(){
                    return 'The make is:' .$this-&gt;make;
                }
                
                // Method to get the make
                public function getTransmission(){
                    return 'The transmission is:' .$this-&gt;transmission;
                }
            }
        </code>
    </pre>
    <p><strong>Objects:</strong></p>

    <p>An object is an <strong>instance</strong> of the class. Once a&nbsp;<strong>class&nbsp;</strong>has been created, you can instantiate as many <strong>objects</strong> as you want which will have the properties and behaviour of that class. An object can be created with the&nbsp;<strong>new&nbsp;</strong>keyword followed by the class name. e.g.<br />
    &nbsp;</p>

    <pre>
    <code class="language-php">// Making object of the classs
    $car = new Vehicle('auto');
    $car-&gt;make = 'Ford';
    // Accessing the attributes and methods of the class
    echo $car-&gt;make;
    echo $car-&gt;getTransmission();</code></pre>

    <p>&nbsp;</p>

    <hr>

    <h3>Q. No. 2: Write a PHP program that is responsible for filling a bath. You can define any API you like to control the bath.</h3>
    <h4>Answer:</h4>
    <pre>
        <code class="language-php">&lt;?php

            class ProcessBath
            {
                private bool $tapsOpen = false;
                private float $waterTemperature = 25.0; // Default temperature in Celsius
                private float $waterVolume = 0.0; // Volume in liters

                public function setWaterTapsOpen(bool $val)
                {
                    $this-&gt;tapsOpen = $val;
                }

                public function openTaps()
                {
                    if (!$this-&gt;tapsOpen) {
                        $this-&gt;tapsOpen = true;
                        $this-&gt;fillBathAsync();
                    } else {
                        echo "Taps are open already. Water is over-flowing.\n&lt;br&gt;";
                        $this-&gt;waterVolume = 60.0;
                    }
                }

                public function closeTaps()
                {
                    if ($this-&gt;tapsOpen) {
                        $this-&gt;tapsOpen = false;
                        echo "Taps closed. Your bath is ready.\n&lt;br&gt;";
                    } else {
                        echo "Taps are already closed. Bath is already ready or was not filled.\n&lt;br&gt;";
                    }
                }

                public function isBathReady(): bool
                {
                    return !$this-&gt;tapsOpen;
                }

                private function fillBathAsync()
                {
                    if(!$this-&gt;isBathReady()){
                        // Simulate asynchronous bath filling
                        for ($i = 0; $i &lt; 10; $i++) {
                            $this-&gt;waterVolume += 5.0; // Simulating 5 liters of water added per iteration
                            usleep(250000); // Simulating a delay of 0.25 seconds (250,000 microseconds)
                            $this-&gt;updateTemperature();
                            echo "Filling bath: {$this-&gt;waterVolume} liters, Temperature: {$this-&gt;waterTemperature}°C\n&lt;br&gt;";
                        }
                    }
                }

                private function updateTemperature()
                {
                    // Simulate temperature change during bath filling
                    $this-&gt;waterTemperature += 0.5; // Simulating a temperature increase of 0.5°C per iteration
                }

                public function getWaterTemperature(): float
                { 
                    // Accessing the water temperature after filling the bath
                    return $this-&gt;waterTemperature;
                }

                public function getWaterVolume(): float
                {
                    // Accessing the water temperature after filling the bath
                    return $this-&gt;waterVolume;
                }
            }

            // Usage with dafault behavior
            $bath = new ProcessBath();

            // Open the taps
            $bath-&gt;openTaps();

            // Simulate time passing or other activities

            // Close the taps
            $bath-&gt;closeTaps();

            // Check if the bath is ready
            if ($bath-&gt;isBathReady()) {
                echo "Bath is ready! Enjoy your relaxing bath. Water temperature: {$bath-&gt;getWaterTemperature()}°C, Volume: {$bath-&gt;getWaterVolume()} liters.\n&lt;br&gt;";
            } else {
                echo "Bath is not ready. Please make sure to close the taps.\n&lt;br&gt;";
            }
            echo '&lt;hr&gt;';
            // Usage with custom input behavior
            $bath = new ProcessBath();
            $setWaterTapsOpen = true; // User input
            $bath-&gt;setWaterTapsOpen($setWaterTapsOpen);

            // Open the taps
            $bath-&gt;openTaps();

            // Simulate time passing or other activities

            if($setWaterTapsOpen) {
                // Close the taps
                $bath-&gt;closeTaps();
            }

            // Check if the bath is ready
            if ($bath-&gt;isBathReady()) {
                echo "Bath is ready! Enjoy your relaxing bath. Water temperature: {$bath-&gt;getWaterTemperature()}°C, Volume: {$bath-&gt;getWaterVolume()} liters.\n&lt;br&gt;";
            } else {
                echo "Bath is not ready. Please make sure to close the taps.\n&lt;br&gt;";
            }
        </code>
    </pre>

    <hr>

    <h3>Q. No. 3: Write a short PHP function that reverses a string.</h3>
    <h4>Answer:</h4>
    <pre>
        <code class="language-php">&lt;?php
            function stringReversal($string) {
                // if the string has only one character or a empty string 
                if ($string === '' || strlen($string) === 1) {
                    return $string;
                } else {
                    // Recursive case
                    return substr($string, -1) . stringReversal(substr($string, 0, -1));
                }
            }

            $string = "A random string";
            $reversedString = stringReversal($string);

            echo "Original String: $string &lt;br&gt; Reversed String: $reversedString";

            // Output
            // Original String: A random string
            // Reversed String: gnirts modnar A
        </code>
    </pre>

    <hr>

    <h3>Q. No. 4: Create a simple entity relationship diagram (ERD) that depicts the relationship between the following tables.</h3>
    <table border="1" cellpadding="1" cellspacing="1" style="width:500px">
        <thead>
            <tr>
                <th scope="col">customer</th>
                <th scope="col">order</th>
                <th scope="col">order_product</th>
                <th scope="col">product</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>id</td>
                <td>id</td>
                <td>id</td>
                <td>id</td>
            </tr>
            <tr>
                <td>name</td>
                <td>customer_id</td>
                <td>order_id</td>
                <td>name</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>date</td>
                <td>product_id</td>
                <td>price</td>
            </tr>
        </tbody>
    </table>
    <h4>Answer:</h4>
    <img src="tangent ERD.drawio.png" >
    
    <hr>

    <h3>Q. No. 5: Finally, write an SQL query that returns the top 5 customers every day for the last month based on the database tables outlined in Question 4.</h3>
    <h4>Answer:</h4>
    <p>Also, attached the database schema and data set to test the query.</p>
    <pre>
        <code>
        SELECT
            date,
            customer_id,
            customer_name,
            total
        FROM (
            SELECT
                o.date,
                c.id AS customer_id,
                c.name AS customer_name,
                SUM(p.price) AS total,
                ROW_NUMBER() OVER (PARTITION BY o.date ORDER BY SUM(p.price) DESC) AS r_num
            FROM
                `order` o
            LEFT JOIN
                customer c ON o.customer_id = c.id
            LEFT JOIN
                order_product op ON o.id = op.order_id
            LEFT JOIN
                product p ON op.product_id = p.id
            WHERE
                o.date BETWEEN (select last_day(curdate() - interval 2 month) + interval 1 day) AND (select last_day(curdate() - interval 1 month))
            GROUP BY
                o.date,
                c.id
            ORDER BY `o`.`date` DESC, total DESC
        ) sub_data
        WHERE
            r_num <= 5;
        </code>
    </pre>
</body>
</html>