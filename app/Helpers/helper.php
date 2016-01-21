<?php // Code within app\Helpers\Helper.php

    namespace App\Helpers

    class Helper
    {
        public static function prettyJson($inputArray, $statusCode)
        {
            return response()->json($inputArray, $statusCode, array('Content-Type' => 'application/json'), JSON_PRETTY_PRINT);
        }
    }