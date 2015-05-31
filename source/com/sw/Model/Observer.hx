package com.sw;

interface Observer {
    public function update(notifier:Notifier, property:String, data:Dynamic) : Void;
}