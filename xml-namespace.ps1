$ns = @{
        msci='http://schemas.microsoft.com/rtc/2005/08/confinfoextensions';
        mscp='http://schemas.microsoft.com/rtc/2005/08/cccpextensions';
        ci='urn:ietf:params:xml:ns:conference-info';
        request='urn:ietf:params:xml:ns:cccp';
        response='urn:ietf:params:xml:ns:cccp';
}

$xdoc = [xml](Get-Content .\sipresponse_test.xml)

$MetaData = $xdoc | Select-Xml '/request:getConference/request:conferenceKeys/@msci:conference-id' -Namespace $ns
$MetaData.Node | Format-Table  -AutoSize

$MetaData = $xdoc | Select-Xml '/request:getConference/request:conferenceKeys/@confEntity' -Namespace $ns
$MetaData.Node | Format-Table  -AutoSize

$MetaData = $xdoc | Select-Xml '//ci:conference-info' -Namespace $ns
$MetaData.Node | Format-Table  -AutoSize

$MetaData = $xdoc | Select-Xml '//msci:conference-id/text()' -Namespace $ns
$MetaData.Node | Format-Table  -AutoSize

#/conference-description/msci:conference-id