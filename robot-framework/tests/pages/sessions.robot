*** Settings ***
Documentation            Cenários de testes da rota sessions
Resource                 ../../resources/base.resource
Library                  ../../resources/libs/database.py
Library                  Collections
Test Setup               Start Session
Test Teardown            Take Screenshot

*** Test Cases ***
