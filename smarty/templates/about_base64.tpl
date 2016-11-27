{extends file='base.tpl'}

{block name='title'}About base64{/block}

{block name='content'}
<div class="content-header">
  <h1>
    About BASE64
  </h1>
</div>
<div class="page-content inset">
  <div class="row">
    <div class="col-md-12 lead text-justify">
      <p>The term Base64 is coming from a certain MIME content transfer encoding. Basically, Base64 is a collection of related encoding designs which represent the binary information in ASCII format by converting it into a base64 representation.</p>

      <p>Base64 encoding schemes are generally used when there is a need to encode binary information that needs to be stored and transferred over media that are developed to deal with textual information. This guarantees that the data stays unchanged without modification during transfer. Base64 is generally used in a number of applications including electronic mail via MIME, and keeping complex information in XML.</p>

      <p>The specific set of characters chosen for the 64 characters needed for the base can vary among implementations. The common concept is to select a set of 64 characters that is both part of a subset typical to most encodings. This mixture leaves the data impossible to be altered in transportation thru information systems, such as electronic mail, that were typically not 8-bit clean. The Base64 implementation in MIME uses a-z, A-Z and 0-9 for the first 62 values. Other Base64 variations share the same property but they use different symbols in the last two values.
      </p>
    </div>
  </div>
</div>
{/block}
