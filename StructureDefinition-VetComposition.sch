<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Composition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Composition</sch:title>
    <sch:rule context="f:Composition">
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Composition/f:identifier</sch:title>
    <sch:rule context="f:Composition/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 0">use: maximum cardinality of 'use' is 0</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 0">period: maximum cardinality of 'period' is 0</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 0">assigner: maximum cardinality of 'assigner' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Composition/f:type</sch:title>
    <sch:rule context="f:Composition/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Composition/f:type/f:coding</sch:title>
    <sch:rule context="f:Composition/f:type/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &gt;= 1">display: minimum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Composition/f:category</sch:title>
    <sch:rule context="f:Composition/f:category">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Composition/f:category/f:coding</sch:title>
    <sch:rule context="f:Composition/f:category/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &gt;= 1">display: minimum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Composition/f:section</sch:title>
    <sch:rule context="f:Composition/f:section">
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 0">focus: maximum cardinality of 'focus' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 0">mode: maximum cardinality of 'mode' is 0</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 0">orderedBy: maximum cardinality of 'orderedBy' is 0</sch:assert>
      <sch:assert test="count(f:entry) &gt;= 1">entry: minimum cardinality of 'entry' is 1</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 1">entry: maximum cardinality of 'entry' is 1</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 0">emptyReason: maximum cardinality of 'emptyReason' is 0</sch:assert>
      <sch:assert test="count(f:section) &lt;= 0">section: maximum cardinality of 'section' is 0</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 0">focus: maximum cardinality of 'focus' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 0">mode: maximum cardinality of 'mode' is 0</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 0">orderedBy: maximum cardinality of 'orderedBy' is 0</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 0">emptyReason: maximum cardinality of 'emptyReason' is 0</sch:assert>
      <sch:assert test="count(f:section) &lt;= 0">section: maximum cardinality of 'section' is 0</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 0">focus: maximum cardinality of 'focus' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 0">mode: maximum cardinality of 'mode' is 0</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 0">orderedBy: maximum cardinality of 'orderedBy' is 0</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 0">emptyReason: maximum cardinality of 'emptyReason' is 0</sch:assert>
      <sch:assert test="count(f:section) &lt;= 0">section: maximum cardinality of 'section' is 0</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 0">focus: maximum cardinality of 'focus' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 0">mode: maximum cardinality of 'mode' is 0</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 0">orderedBy: maximum cardinality of 'orderedBy' is 0</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 0">emptyReason: maximum cardinality of 'emptyReason' is 0</sch:assert>
      <sch:assert test="count(f:section) &lt;= 0">section: maximum cardinality of 'section' is 0</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 0">focus: maximum cardinality of 'focus' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 0">mode: maximum cardinality of 'mode' is 0</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 0">orderedBy: maximum cardinality of 'orderedBy' is 0</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 0">emptyReason: maximum cardinality of 'emptyReason' is 0</sch:assert>
      <sch:assert test="count(f:section) &lt;= 0">section: maximum cardinality of 'section' is 0</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 0">focus: maximum cardinality of 'focus' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 0">mode: maximum cardinality of 'mode' is 0</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 0">orderedBy: maximum cardinality of 'orderedBy' is 0</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 0">emptyReason: maximum cardinality of 'emptyReason' is 0</sch:assert>
      <sch:assert test="count(f:section) &lt;= 0">section: maximum cardinality of 'section' is 0</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 0">focus: maximum cardinality of 'focus' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 0">mode: maximum cardinality of 'mode' is 0</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 0">orderedBy: maximum cardinality of 'orderedBy' is 0</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 0">emptyReason: maximum cardinality of 'emptyReason' is 0</sch:assert>
      <sch:assert test="count(f:section) &lt;= 0">section: maximum cardinality of 'section' is 0</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 0">focus: maximum cardinality of 'focus' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 0">mode: maximum cardinality of 'mode' is 0</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 0">orderedBy: maximum cardinality of 'orderedBy' is 0</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 0">emptyReason: maximum cardinality of 'emptyReason' is 0</sch:assert>
      <sch:assert test="count(f:section) &lt;= 0">section: maximum cardinality of 'section' is 0</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 0">focus: maximum cardinality of 'focus' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 0">mode: maximum cardinality of 'mode' is 0</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 0">orderedBy: maximum cardinality of 'orderedBy' is 0</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 0">emptyReason: maximum cardinality of 'emptyReason' is 0</sch:assert>
      <sch:assert test="count(f:section) &lt;= 0">section: maximum cardinality of 'section' is 0</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 0">focus: maximum cardinality of 'focus' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 0">mode: maximum cardinality of 'mode' is 0</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 0">orderedBy: maximum cardinality of 'orderedBy' is 0</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 0">emptyReason: maximum cardinality of 'emptyReason' is 0</sch:assert>
      <sch:assert test="count(f:section) &lt;= 0">section: maximum cardinality of 'section' is 0</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 0">focus: maximum cardinality of 'focus' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 0">mode: maximum cardinality of 'mode' is 0</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 0">orderedBy: maximum cardinality of 'orderedBy' is 0</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 0">emptyReason: maximum cardinality of 'emptyReason' is 0</sch:assert>
      <sch:assert test="count(f:section) &lt;= 0">section: maximum cardinality of 'section' is 0</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 0">focus: maximum cardinality of 'focus' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 0">mode: maximum cardinality of 'mode' is 0</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 0">orderedBy: maximum cardinality of 'orderedBy' is 0</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 0">emptyReason: maximum cardinality of 'emptyReason' is 0</sch:assert>
      <sch:assert test="count(f:section) &lt;= 0">section: maximum cardinality of 'section' is 0</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 0">focus: maximum cardinality of 'focus' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 0">mode: maximum cardinality of 'mode' is 0</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 0">orderedBy: maximum cardinality of 'orderedBy' is 0</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 0">emptyReason: maximum cardinality of 'emptyReason' is 0</sch:assert>
      <sch:assert test="count(f:section) &lt;= 0">section: maximum cardinality of 'section' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Composition/f:section/f:entry</sch:title>
    <sch:rule context="f:Composition/f:section/f:entry">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:reference) &gt;= 1">reference: minimum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:display) &lt;= 0">display: maximum cardinality of 'display' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:reference) &gt;= 1">reference: minimum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:display) &lt;= 0">display: maximum cardinality of 'display' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
