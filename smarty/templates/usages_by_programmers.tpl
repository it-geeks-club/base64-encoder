{extends file='base.tpl'}

{block name='title'}Usages by programmers{/block}

{block name='head'}
<link href="/css/vendor/selectize.css" rel="stylesheet">
<link href="/css/vendor/selectize.bootstrap3.css" rel="stylesheet">
<script src="/js/vendor/selectize.js"></script>
<script src="/js/pages/usages_by_programmers.js"></script>
{/block}

{block name='content'}
<div class="content-header">
    <h1>
        How to use BASE64 in different programming languages
    </h1>
</div>
<div class="page-content inset">
    <div class="row">
        <div class="col-md-12">
            <div class="control-group">
                <select id="select-pl" placeholder="Select programming language...">
                    <option value="">Select programming language...</option>
                    <option value="python">Python</option>
                    <option value="php">PHP</option>
                    <option value="csharp">C#</option>
                    <option value="perl">Perl</option>
                    <option value="vb.net">Visual Basic .NET</option>
                    <option value="java">Java</option>
                    <option value="ruby">Ruby</option>
                </select>
            </div>
            <table class="code-example text-justify" data-rel-pl="python">
                <thead>
                    <tr>
                        <th>
                            Encode
                        </th>
                        <th>
                            Decode
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <dl>
                                <dt>Function</dt>
                                <dd>
                                    <code>base64.b64encode(s[, altchars])</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Parameters</dt>
                                <dd>
                                    <code>s</code> — is the string to encode.<br> Optional <code>altchars</code> must be a string of at least length 2 (additional characters are ignored) which specifies an alternative alphabet for the + and / characters.
                                    This allows an application to e.g. generate URL or filesystem safe Base64 strings. The default is None, for which the standard Base64 alphabet is used.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Return values</dt>
                                <dd>
                                    The encoded string is returned.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Example</dt>
                                <dd>
<code class="block">import base64
str = 'base64 encoded string'
encoded = base64.b64encode(str)
print(encoded)</code>
                                </dd>
                            </dl>
                        </td>
                        <td>
                            <dl>
                                <dt>Function</dt>
                                <dd>
                                    <code>base64.b64decode(s[, altchars])</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Parameters</dt>
                                <dd>
                                    <code>s</code> — is the string to decode.<br> Optional <code>altchars</code> must be a string of at least length 2 (additional characters are ignored) which specifies the alternative alphabet used instead of the + and
                                    / characters.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Return values</dt>
                                <dd>
                                    The decoded string is returned. A TypeError is raised if s were incorrectly padded or if there are non-alphabet characters present in the string.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Example</dt>
                                <dd>
<code class="block">import base64
encoded = 'YmFzZTY0IGVuY29kZWQgc3RyaW5n'
str = base64.b64decode(encoded)
print(str)</code>
                                </dd>
                            </dl>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="code-example text-justify" data-rel-pl="csharp">
                <thead>
                    <tr>
                        <th>
                            Encode
                        </th>
                        <th>
                            Decode
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <dl>
                                <dt>Function</dt>
                                <dd>
                                    <code>public static string ToBase64String(byte[] inArray)</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Parameters</dt>
                                <dd>
                                    <code>inArray</code> — An array of 8-bit unsigned integers.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Return values</dt>
                                <dd>
                                    The string representation, in base 64, of the contents of inArray.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Example</dt>
                                <dd>
<code class="block">string str = "base64 encoded string";
byte[] data = System.Text.ASCIIEncoding.ASCII.GetBytes(str);
string encoded = System.Convert.ToBase64String(data);
System.Console.WriteLine(encoded);</code>
                                </dd>
                            </dl>
                        </td>
                        <td>
                            <dl>
                                <dt>Function</dt>
                                <dd>
                                    <code>public static byte[] FromBase64String(string s)</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Parameters</dt>
                                <dd>
                                    <code>s</code> — The string to convert.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Return values</dt>
                                <dd>
                                    An array of 8-bit unsigned integers that is equivalent to s.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Example</dt>
                                <dd>
<code class="block">string encoded = "YmFzZTY0IGVuY29kZWQgc3RyaW5n";
byte[] data = System.Convert.FromBase64String(encoded);
string str = System.Text.ASCIIEncoding.ASCII.GetString(data);
System.Console.WriteLine(str);</code>
                                </dd>
                            </dl>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="code-example text-justify" data-rel-pl="java">
                <thead>
                    <tr>
                        <th>
                            Encode
                        </th>
                        <th>
                            Decode
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <dl>
                                <dt>Function</dt>
                                <dd>
                                    <code>public String encodeBuffer(ByteBuffer aBuffer)</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Parameters</dt>
                                <dd>
                                    <code>aBuffer</code> — An array of 8-bit unsigned integers.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Return values</dt>
                                <dd>
                                    Returns a string containing the encoded buffer.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Example</dt>
                                <dd>
<code class="block">sun.misc.BASE64Encoder encoder = sun.misc.BASE64Encoder();
String str = "base64 encoded string";
byte[] data = str.getBytes();
String encoded = encoder.encodeBuffer(data);
System.out.println(encoded);</code>
                                </dd>
                            </dl>
                        </td>
                        <td>
                            <dl>
                                <dt>Function</dt>
                                <dd>
                                    <code>public byte[] decodeBuffer(String inputString)</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Parameters</dt>
                                <dd>
                                    <code>inputString — string containing the encoded buffer.</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Return values</dt>
                                <dd>
                                    Returns a byte array containing the data.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Example</dt>
                                <dd>
<code class="block">sun.misc.BASE64Decoder decoder = sun.misc.BASE64Decoder();
String encoded = "YmFzZTY0IGVuY29kZWQgc3RyaW5n";
byte[] data = decoder.decodeBuffer(encoded);
String str = new String(data);
System.out.println(str);</code>
                                </dd>
                            </dl>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="code-example text-justify" data-rel-pl="vb.net">
                <thead>
                    <tr>
                        <th>
                            Encode
                        </th>
                        <th>
                            Decode
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <dl>
                                <dt>Function</dt>
                                <dd>
                                    <code>Public Shared Function ToBase64String (inArray As Byte()) As String</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Parameters</dt>
                                <dd>
                                    <code>inArray</code> — An array of 8-bit unsigned integers.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Return values</dt>
                                <dd>
                                    The string representation, in base 64, of the contents of inArray.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Example</dt>
                                <dd>
<code class="block">Dim str As String = "base64 encoded string"
Dim data As Byte() = System.Text.ASCIIEncoding.ASCII.GetBytes(str)
Dim encoded As String = System.Convert.ToBase64String(data)
System.Console.WriteLine(encoded)</code>
                                </dd>
                            </dl>
                        </td>
                        <td>
                            <dl>
                                <dt>Function</dt>
                                <dd>
                                    <code>Public Shared Function FromBase64String (s As String) As Byte()</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Parameters</dt>
                                <dd>
                                    <code>s</code> — The string to convert.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Return values</dt>
                                <dd>
                                    An array of 8-bit unsigned integers that is equivalent to s.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Example</dt>
                                <dd>
<code class="block">Dim encoded As String = "YmFzZTY0IGVuY29kZWQgc3RyaW5n"
Dim data() As Byte = System.Convert.FromBase64String(encoded)
Dim str As String = System.Text.ASCIIEncoding.ASCII.GetString(data)
System.Console.WriteLine(str)</code>
                                </dd>
                            </dl>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="code-example text-justify" data-rel-pl="php">
                <thead>
                    <tr>
                        <th>
                            Encode
                        </th>
                        <th>
                            Decode
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <dl>
                                <dt>Function</dt>
                                <dd>
                                    <code>string base64_encode (string $data);</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Parameters</dt>
                                <dd>
                                    <code>$data</code> — The data to encode.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Return values</dt>
                                <dd>
                                    The encoded data, as a string or FALSE on failure.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Example</dt>
                                <dd>
<code class="block">$str = 'base64 encoded string';
$encoded = base64_encode($str);
echo $encoded;</code>
                                </dd>
                            </dl>
                        </td>
                        <td>
                            <dl>
                                <dt>Function</dt>
                                <dd>
                                    <code>string base64_decode (string $data [,bool $strict = false]);</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Parameters</dt>
                                <dd>
                                    <code>$data</code> — The encoded data.<br>
                                    <code>$strict</code> — Returns FALSE if input contains character from outside the base64 alphabet.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Return values</dt>
                                <dd>
                                    Returns the original data or FALSE on failure. The returned data may be binary.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Example</dt>
                                <dd>
<code class="block">$encoded = 'YmFzZTY0IGVuY29kZWQgc3RyaW5n';
$str = base64_decode($encoded);
echo $str;</code>
                                </dd>
                            </dl>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="code-example text-justify" data-rel-pl="perl">
                <thead>
                    <tr>
                        <th>
                            Encode
                        </th>
                        <th>
                            Decode
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <dl>
                                <dt>Function</dt>
                                <dd>
                                    <code>encode_base64($bytes, $eol);</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Parameters</dt>
                                <dd>
                                    <code>$bytes</code> — String to be encoded.<br>
                                    <code>$eol</code> — The line-ending sequence to use. It is optional and defaults to '\n'.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Return values</dt>
                                <dd>
                                    The returned encoded string is broken into lines of no more than 76 characters each and it will end with $eol unless it is empty.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Example</dt>
                                <dd>
<code class="block">use MIME::Base64;
$str = 'base64 encoded string';
$encoded = encode_base64($str);
print $encoded;</code>
                                </dd>
                            </dl>
                        </td>
                        <td>
                            <dl>
                                <dt>Function</dt>
                                <dd>
                                    <code>decode_base64($string);</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Parameters</dt>
                                <dd>
                                    <code>$string</code> — The encoded data.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Return values</dt>
                                <dd>
                                    Decoded data.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Example</dt>
                                <dd>
<code class="block">use MIME::Base64;
$encoded = 'YmFzZTY0IGVuY29kZWQgc3RyaW5n';
$str = decode_base64($encoded);
print $str;</code>
                                </dd>
                            </dl>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="code-example text-justify" data-rel-pl="ruby">
                <thead>
                    <tr>
                        <th>
                            Encode
                        </th>
                        <th>
                            Decode
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <dl>
                                <dt>Function</dt>
                                <dd>
                                    <code>Base64.encode64(bin)</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Parameters</dt>
                                <dd>
                                    <code>bin</code> — the string to be encoded.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Return values</dt>
                                <dd>
                                    Returns the Base64-encoded version of bin.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Example</dt>
                                <dd>
<code class="block">require "base64"
str = 'base64 encoded string'
encoded = Base64.encode64(str)
puts encoded</code>
                                </dd>
                            </dl>
                        </td>
                        <td>
                            <dl>
                                <dt>Function</dt>
                                <dd>
                                    <code>Base64.decode64(str)</code>
                                </dd>
                            </dl>
                            <dl>
                                <dt>Parameters</dt>
                                <dd>
                                    <code>str</code> — the string to be decoded.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Return values</dt>
                                <dd>
                                    Returns the Base64-decoded version of str.
                                </dd>
                            </dl>
                            <dl>
                                <dt>Example</dt>
                                <dd>
<code class="block">require "base64"
encoded = 'YmFzZTY0IGVuY29kZWQgc3RyaW5n'
str = Base64.decode64(encoded)
puts str</code>
                                </dd>
                            </dl>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
{/block}
