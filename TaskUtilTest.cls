@IsTest

 private class TaskUtilTest {
 
 @IsTest static void testTaskPriority()
 {
 string pri = TaskUtil.getTaskPriority('NY');
 system.assertEquals( 'Normal', pri);
 }
@IsTest static void testTaskHighPriority()
 {
  string pri = TaskUtil.getTaskPriority('CA');   
  system.assertEquals( 'High', pri);
}
 @IsTest static void testTaskPriorityInvalid()
 {
 string pri = TaskUtil.getTaskPriority('Montana');  
 system.assertEquals( Null,pri);
}
}