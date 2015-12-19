/***************************************************
  Tracks a goal conversion for the specified goal id.
  This goal id can be found in your piwik control panel.
  
  Usage:
        arg0 => The integer id of the goal to track.
        arg1 => (Optional) The numeric value of the 
                           revenue generated by the 
                           goal conversion. 
 ***************************************************/
var monVal;
if (string(argument1) == "" || real(argument1) == 0)
{
   monVal = "revenue=0";
}
else
{
   monVal = "revenue="+string(argument1);
}

with (o_PiwikTracker)
{
 _piwikSendBasicReq("idgoal="+string(argument0), monVal, 'action_name=Recording Goal Conversion');
}
