#!/usr/bin/env python
# -*- coding: utf-8 -*-


from invoke import task, run


@task
def build(ctx, verbose=False, iteration=10):
    """docker build command"""
    cmd = """docker image build -t alpine-mosh-client/2020-0629:latest ."""
    ctx.run(cmd)
