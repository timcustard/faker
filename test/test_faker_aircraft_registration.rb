require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerAircraftRegistration < Test::Unit::TestCase
  def setup
    @tester = Faker::AircraftRegistration
  end

  def test_afghanistan
    assert @tester.number('Afghanistan').match(/YA-[A-Z]{3}/)
  end

  def test_albania
    assert @tester.number('Albania').match(/ZA-[A-Z]{3}/)
  end

  def test_algeria
    assert @tester.number('Algeria').match(/7T-[VW][A-Z]{2}/)
  end

  def test_andorra
    assert @tester.number('Andorra').match(/C3-[A-Z]{3}/)
  end

  def test_angola
    assert @tester.number('Angola').match(/D2-[A-Z]{3}/)
  end

  def test_anguilla
    assert @tester.number('Anguilla').match(/VP-A[A-Z]{2}/)
  end

  def test_antigua_and_barbuda
    assert @tester.number('Antigua and Barbuda').match(/V2-[A-Z]{3}/)
  end

  def test_argentina
    assert @tester.number('Argentina').match(/L[VQ]-[A-Z]{3}/)
  end

  def test_armenia
    assert @tester.number('Armenia').match(/EK-[1-9][0-9]{4}/)
  end

  def test_aruba
    assert @tester.number('Aruba').match(/P4-[A-Z]{3}/)
  end

  def test_australia
    assert @tester.number('Australia').match(/VH-[A-Z]{3}/)
  end

  def test_austria
    # TODO: add gliders :
    # OE-0001 to OE-5999 (gliders)
    # OE-9000 to OE-9999 (motor gliders)
    assert @tester.number('Austria').match(/OE-[A-LVWX][A-Z]{2}/)
  end

  def test_azerbaijan
    test_number = @tester.number('Azerbaijan')
    assert ( test_number.match(/4K-AZ[1-9][0-9]{0,2}/) || test_number.match(/4K-[1-9][0-9]{4}/) )
  end

  def test_bahamas
    assert @tester.number('Bahamas').match(/C6-[A-Z]{3}/)
  end

  def test_bahrain
    assert @tester.number('Bahrain').match(/A9C-[A-Z]{2}/)
  end

  def test_bangladesh
    assert @tester.number('Bangladesh').match(/S2-[A-Z]{3}/)
  end

  def test_barbados
    assert @tester.number('Barbados').match(/8P-[A-Z]{3}/)
  end

  def test_belarus
    # TODO: add reserved for offical use: EW-001DA, EW-001PA, EW-001PB, EW-85815
    #       add balloons: EW-0001L to EW-9999L
    test_number = @tester.number('Belarus')
    assert ( test_number.match(/EW-[1-9][0-9]{4}/) || test_number.match(/EW-[1-9][0-9]{2}[A-Z]{2}/) )
  end

  def test_belgium
    # TODO: add home-built aircraft: OO-01 to OO-499
    #       add microlights: OO-501 to OO-999
    assert @tester.number('Belgium').match(/OO-([A-P]|[R-Z])[A-Z]{2}/)
  end

  def test_belize
    assert @tester.number('Belize').match(/V3-[A-Z]{3}/)
  end

  def test_benin
    assert @tester.number('Benin').match(/TY-[A-Z]{3}/)
  end

  def test_bermuda
    assert @tester.number('Bermuda').match(/V[PQ]-B[A-Z]{2}/)
  end

  def test_bhutan
    assert @tester.number('Bhutan').match(/A5-[A-Z]{3}/)
  end

  def test_bolivia
    assert @tester.number('Bolivia').match(/CP-[1-9][0-9]{3}/)
  end

  def test_bosnia_and_herzegovina
    assert @tester.number('Bosnia and Herzegovina').match(/(T9|E7)-[A-Z]{3}/)
  end

  def test_botswana
    assert @tester.number('Botswana').match(/A2-[A-Z]{3}/)
  end

  def test_brazil
    assert @tester.number('Brazil').match(/P[PRSTU]-[A-Z]{3}/)
  end

  def test_british_virgin_islands
    assert @tester.number('British Virgin Islands').match(/VP-L[A-Z]{2}/)
  end

  def test_brunei
    # TODO: add V8-001 to V8-999
    assert @tester.number('Brunei').match(/V8-[A-Z]{2}[A-Z0-9]/)
  end

  def test_bulgaria
    assert @tester.number('Bulgaria').match(/LZ-[A-Z]{3}/)
  end

  def test_burkina_faso
    assert @tester.number('Burkina Faso').match(/XT-[A-Z]{3}/)
  end

  def test_burundi
    assert @tester.number('Burundi').match(/9U-[A-Z]{3}/)
  end

  def test_cambodia
    assert @tester.number('Cambodia').match(/XU-[A-Z]{3}/)
  end

  def test_cameroon
    assert @tester.number('Cameroon').match(/TJ-[A-Z]{3}/)
  end

  def test_canada
    assert @tester.number('Canada').match(/C-[FGI][A-Z]{3}/)
  end

  def test_cape_verde
    assert @tester.number('Cape Verde').match(/D4-[A-Z]{3}/)
  end

  def test_cayman_islands
    assert @tester.number('Cayman Islands').match(/VP-C[A-Z]{2}/)
  end

  def test_central_african_republic
    assert @tester.number('Central African Republic').match(/TL-[A-Z]{3}/)
  end

  def test_chad
    assert @tester.number('Chad').match(/TT-[A-Z]{3}/)
  end

  def test_chile
    assert @tester.number('Chile').match(/CC-[A-Z]{3}/)
  end

  def test_china
    assert @tester.number('China').match(/B-[0-9]{2}([0-9]{2}|[A-Z]{2})/)
  end

  def test_columbia
    assert @tester.number('Colombia').match(/H[JK]-[1-9][0-9]{3}[A-Z]/)
  end

  def test_comoros
    assert @tester.number('Comoros').match(/D6-[A-Z]{3}/)
  end

  def test_republic_of_the_congo
    assert @tester.number('Republic of the Congo').match(/TN-[A-Z]{3}/)
  end

  def test_cook_islands
    assert @tester.number('Cook Islands').match(/E5-[A-Z]{3}/)
  end

  def test_democratic_republic_of_the_congo
    assert @tester.number('Democratic Republic of the Congo').match(/9[SQ]-[A-Z]{3}/)
  end

  def test_costa_rica
    assert @tester.number('Costa Rica').match(/TI-([A-Z]{3}|[0-9]{3})/)
  end

  def test_usa
    assert @tester.number('USA').match(/N[1-9][0-9]{0,4}[A-Z]{0,2}/)
  end

  def test_uk
    assert @tester.number('UK').match(/G-[A-Z]{4}/)
  end
end
