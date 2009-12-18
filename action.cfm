  <!-- Building our query -->
    <cfsavecontent variable="xml">
        <?xml version="1.0" ?>
        <query>
            <action>AddMedia</action>
            <userid>0</userid>
            <userkey>your_key</userkey>
            <source>http://your.server.tld/some/path/file</source>
            <format>
                <output>3gp</output>
            </format>
            <format>
                <output>wmv</output>
            </format>
            <format>
                <output>flv</output>
            </format>
        </query>
    </cfsavecontent>
                           
    <!-- Setting up the URL to send the request -->
    <cfset theURL = "http://manage.encoding.com">
   
    <!-- Sending the request -->
    <cfhttp url="#theURL#" charset="utf-8" method="post">
        <cfhttpparam type="formfield" name="xml" value="#xml#">
    </cfhttp>
   
    <!-- Getting the result -->
    <cfdump var="#cfhttp.fileContent#">