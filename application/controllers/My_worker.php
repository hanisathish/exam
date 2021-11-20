<?php

use yidas\queue\worker\Controller as WorkerController;

class My_worker extends WorkerController
{
    // Initializer
    protected function init() {
        // Optional autoload (Load your own libraries or models)
        $this->load->library('myjobs');
    }
    
    // Worker
    protected function handleWork() {}
    
    // Listener
    protected function handleListen() {}
}