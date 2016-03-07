context("idGenerators")


assign("count", 13, envir=environment(svgR:::genId))

test_that("test-genid-", {
  id<-svgR:::genId()
  expect_equal("genid14",id)
})

test_that("test-genId-FALSE", {
  id<-svgR:::genId(FALSE)
  expect_equal("genid14",id)
})
 
 test_that("test-genId-TRUE", {
   id<-svgR:::genId()
   expect_equal("genid15",id)
 })
 
test_that("test-autoId", {
  id<-autoId()
  expect_equal("autoId1",id)
})

test_that("test-genId.New", {
  nextFrog<-svgR:::genId.new("frog")
  id<-nextFrog()
  expect_equal("frog1",id)
})


test_that("test-genId.New-error", {
  nextBird<-svgR:::genId.new("bird")
  expect_error(genId.new("bird"))
})
