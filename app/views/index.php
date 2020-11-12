<html>

<head>
    <title>PHP Test</title>
    <link href="./resources/index.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <style>
        body {
            background: #5887ff;
            font-family: Arial, 'sans-serif';
        }
    </style>
</head>

<body class="animate__animated animate__fadeIn">

    <?php
    class Student
    {
        // Properties
        public $stu_id;
        public $stu_name;
        public $programme;

        function __construct($id, $name, $programme)
        {
            $this->stu_id = $id;
            $this->stu_name = $name;
            $this->programme = $programme;
        }

        // Methods
        function get()
        {
            return $this;
        }
    }

    /**
     * Extends the Student class
     *
     * @id    string
     * @name string
     * @programme    string
     * @credits   integer
     * 
     */
    class Undergraduate extends Student
    {
        public $tuition = 0;
        public $credits = 0;
        public $base_credit_cost = 4500;
        public $required = 60;

        public function __construct($id, $name, $programme, $credit)
        {
            $this->stu_id = $id;
            $this->stu_name = $name;
            $this->programme = $programme;
            $this->credits = $credit;
        }

        public function Tuition()
        {
            //Check that the student's credits meet the min required amount
            if ($this->credits >= $this->required) {
                $this->tuition = ($this->credits * $this->base_credit_cost);
                echo 'tuition $' . $this->tuition . '';
            } else {
                echo 'You need ' . ($this->required - $this->credits) . ' credits to graduate';
            }
        }
    }

    class Graduate extends Student
    {
        public $tuition = 0;
        public $credits = 0;
        public $base_credit_cost = 4500;
        public $required = 70;

        public function __construct($id, $name, $programme, $credit)
        {
            $this->stu_id = $id;
            $this->stu_name = $name;
            $this->programme = $programme;
            $this->credits = $credit;
        }

        public function Tuition()
        {
            //Check that the student's credits meet the min required amount
            if ($this->credits >= $this->required) {
                $this->tuition = ($this->credits * $this->base_credit_cost);
                echo 'tuition $' . $this->tuition . '';
            } else {
                echo 'You need ' . ($this->required - $this->credits) . ' credits to graduate';
            }
        }
    }

    ?>
    <div class="flex-center" style="margin-top:120px;">
        <form id="form" class="php-form" method="post" action="<?php $_PHP_SELF ?>">
            <h2 style="align:center;">Student</h2>
            <label>ID#</label>
            <input name="id" type="text" max="8" required value="778878" />
            <label>Name</label>
            <input name="name" type="text" required value="John Brown" />
            <label>Credits</label>
            <input name="credits" type="number" required value="77" />
            <label>Programme</label>
            <select name="programme" required>
                <option selected>Graduate</option>
                <option>Undergraduate</option>
            </select>
            <hr>
            <section style="margin-bottom:20px;margin-top:12px">
                <?php
                $req = $_POST;
                $student = new Undergraduate($req['id'], $req['name'], $req['programme'], $req['credits']);
                echo "Credits   : " . $req['credits'] . "<br/>";
                echo "Required  : " . $student->required . "<br/>";
                echo "Programme : " . $req['programme'] . "<br/>";
                echo $student->Tuition();
                ?>
            </section>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>

</html>