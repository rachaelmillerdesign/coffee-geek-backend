# Delivery Notes

## Whiteboard Diagrams

![](https://git.generalassemb.ly/storage/user/4584/files/ba553c00-2bc2-11e7-8166-c370e4bd0527)

This diagram shows the inside out approach to our tests.

There is one big feature test that treats the API like a black box, it makes a request and expects a response back like a curl request.

The smaller circles represent the unit tests that isolate a layer of the API and just tests that one aspect.

When we write the code that makes our last unit test pass, the feature test should pass as well.

![](https://git.generalassemb.ly/storage/user/4584/files/ba67b420-2bc2-11e7-8c88-40fadc577916)

A brief description of the feature tests.

![](https://git.generalassemb.ly/storage/user/4584/files/ba73d2d2-2bc2-11e7-8e3a-3a3281fcab85)

A brief description of the unit tests.

![](https://git.generalassemb.ly/storage/user/4584/files/ba80965c-2bc2-11e7-8943-194a0bf9b15c)

Using the word should here is due to this Behavior Driven Development style.

![](https://git.generalassemb.ly/storage/user/3667/files/744d1ce6-9ee0-11e7-9503-530566ae6e34)

Our workflow for writing the tests. They should always fail after we write them because we write the code after the test.
