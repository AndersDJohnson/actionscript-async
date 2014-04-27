package com.AndersDJohnson.async {

public class Async {
        public function Async() {
        }

        public static function tasks(tasks:Array = null, callback:Function = null):void {
            var count:int = 0;
            var total:int = tasks.length;
            var results:Array = []
            var returned:Boolean = false;

            if (! tasks) {
                tasks = [];
            }

            var onLoaded:Function = function (i:int) {
                return function (e:*, ... args):void {
                    if (returned) return;
                    if (e) {
                        callback(e);
                        returned = true;
                        return;
                    }
                    count++;
                    results[i] = args;
                    if (count === total) {
                        if (callback) callback(null, results);
                    }
                }
            };

            tasks.forEach(function (task, i) {
                task(onLoaded(i));
            });
        }
    }
}
