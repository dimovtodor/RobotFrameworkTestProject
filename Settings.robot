*** Settings ***
Documentation  Settings for the project

Library  SeleniumLibrary  timeout=10  implicit_wait=10
Library  BuiltIn
Library  String
Library  Collections

*** Variables ***
${Context}
${51_Characters} =  Lorem ipsum dolor sit amet, consectetuer adipiscin
