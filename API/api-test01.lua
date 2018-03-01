-- status: correct
-- teardown_command:

oms2_setLoggingLevel(1)

status = oms2_newFMIModel("api_test01")
print("status code: " .. status)

status = oms2_newFMIModel("api_test01")
print("status code: " .. status)

status = oms2_newFMIModel("test-01")
print("status code: " .. status)

status = oms2_newFMIModel("01test")
print("status code: " .. status)

status = oms2_unloadModel("01test")
print("status code: " .. status)

status = oms2_unloadModel("api_test01")
print("status code: " .. status)

status = oms2_unloadModel("api_test01")
print("status code: " .. status)

-- Result:
-- status code: 0
-- error:   A model called "api_test01" is already in the scope.
-- status code: 3
-- debug:   ComRef: invalid cref: test-01
-- error:   "test-01" is not a valid model name.
-- status code: 3
-- debug:   ComRef: invalid cref: 01test
-- error:   "01test" is not a valid model name.
-- status code: 3
-- debug:   ComRef: invalid cref: 01test
-- error:   [oms2::Scope::unloadModel] There is no model called "01test" in the scope.
-- status code: 3
-- info:    Removed model from scope: api_test01
-- status code: 0
-- error:   [oms2::Scope::unloadModel] There is no model called "api_test01" in the scope.
-- status code: 3
-- endResult