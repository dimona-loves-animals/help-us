#!/usr/bin/env python

if __name__ == "__main__":
    import os
    os.chdir(os.path.dirname(__file__))
    from app import run
    run()