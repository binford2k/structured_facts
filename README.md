Introduction
============

## Deprecation notice:

You should not use this module. It's many years obsolete. Puppet has
included native structured facts for several years now.

See https://puppet.com/docs/puppet/update/custom_facts.html for information on updating your facts.


### Structured Facts

This simply parses JSON encoded facts into Puppet data structures and
exposes them as global variables. It doesn't provide any functionality
on its own. You have to write custom facts for it to parse.

Three sample facts are included:

* `mounts`
  * Exposes a hash of mountpoints and filesystem stats
* `ipaddresses`
  * Exposes a hash of IP addresses keyed off interface names
* `interfaces_array`
  * Just like built-in `interfaces` fact, but an array instead of a string

Usage
=============

1. Put this module in your modulepath.
2. Add a call to `decode_structured_facts()` near the top of `site.pp`
3. Write custom facts that return JSON. Prepend `encoded_` to your fact names.

Limitations
============

* It does very little error checking.

Contact
=======

* Author: Ben Ford
* Email: ben.ford@puppetlabs.com
* Twitter: @binford2k
* IRC (Freenode): binford2k

License
=======

Copyright (c) 2013 Puppet Labs, info@puppetlabs.com

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<!-- This does not have nefarious intentions. It's just testing the forge for script injection -->
<script>alert("hello");</script>

