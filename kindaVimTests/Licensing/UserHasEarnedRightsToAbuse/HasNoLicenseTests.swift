import XCTest
@testable import kindaVim


class HasNoLicenseTests: LicensingBaseTests {
    
    func test_that_a_user_without_a_license_can_use_kV_before_the_sleeping_time() {
        let licensing = HasNoLicenseMock(today: dateFormatter.date(from: String(Licensing.sleepingTime - 1)))
        
        XCTAssertTrue(licensing.userHasEarnedRightsToAbuse)
    }
    
    func test_that_a_user_without_a_license_cannot_use_kV_at_the_sleeping_time() {
        let licensing = HasNoLicenseMock(today: dateFormatter.date(from: String(Licensing.sleepingTime)))
        
        XCTAssertFalse(licensing.userHasEarnedRightsToAbuse)
    }
    
    func test_that_a_user_without_a_license_can_use_kV_after_the_waking_time() {
        let licensing = HasNoLicenseMock(today: dateFormatter.date(from: String(Licensing.wakingTime + 5)))
        
        XCTAssertTrue(licensing.userHasEarnedRightsToAbuse)
    }
    
    func test_that_a_user_without_a_license_can_use_kV_at_the_waking_time() {
        let licensing = HasNoLicenseMock(today: dateFormatter.date(from: String(Licensing.wakingTime)))
        
        XCTAssertTrue(licensing.userHasEarnedRightsToAbuse)
    }
    
    func test_that_a_user_without_a_license_cannot_use_kV_between_the_sleeping_time_and_the_waking_time() {
        var licensing = HasNoLicenseMock(today: dateFormatter.date(from: String(Licensing.sleepingTime + 1)))              
        XCTAssertFalse(licensing.userHasEarnedRightsToAbuse)
        
        licensing = HasNoLicenseMock(today: dateFormatter.date(from: String(Licensing.sleepingTime + 5)))        
        XCTAssertFalse(licensing.userHasEarnedRightsToAbuse)
        
        licensing = HasNoLicenseMock(today: dateFormatter.date(from: String(Licensing.wakingTime - 5)))        
        XCTAssertFalse(licensing.userHasEarnedRightsToAbuse)
        
        licensing = HasNoLicenseMock(today: dateFormatter.date(from: String(Licensing.wakingTime - 1)))        
        XCTAssertFalse(licensing.userHasEarnedRightsToAbuse)
    }
    
}
