class ResourceController < ApplicationController
  def test
    BEGIN:VCARD
    VERSION:3.0
    PRODID:-//Apple Inc.//Mac OS X 10.11.3//EN
    N:;textbub;;;
    FN:textbub
    TEL;type=CELL;type=VOICE;type=pref:1(646)455-3611
    UID:1cfaa3f9-23f2-48cb-bdd8-a4a251e351bb
    X-ABUID:1CFAA3F9-23F2-48CB-BDD8-A4A251E351BB:ABPerson
    END:VCARD
  end
end