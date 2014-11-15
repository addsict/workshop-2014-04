#!/usr/bin/env perl
use utf8;
use 5.012001;

use DDP {deparse => 1};

sub func { say '関数です'; }

func();
func();
