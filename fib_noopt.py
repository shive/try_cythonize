﻿#!/bin/env python
# -*- mode: python; coding: utf-8-sig -*-
#======================================================================================================================

def calc(n):
    if 0 == n:
        return 0
    if 1 == n:
        return 1
    return calc(n - 2) + calc(n - 1)
