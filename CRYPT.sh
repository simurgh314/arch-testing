#!/bin/bash


cryptsetup -yv luksFormat /dev/vda2
cryptsetup open /dev/papper container
