/************************************************************************
*************************************************************************
Simple AutoScrambler
Description:
	Automatically scrambles the teams based upon a number of events.
*************************************************************************
*************************************************************************
This file is part of Simple Plugins project.

This plugin is free software: you can redistribute 
it and/or modify it under the terms of the GNU General Public License as
published by the Free Software Foundation, either version 3 of the License, or
later version. 

This plugin is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this plugin.  If not, see <http://www.gnu.org/licenses/>.
*************************************************************************
*************************************************************************
File Information
$Id$
$Author$
$Revision$
$Date$
$LastChangedBy$
$LastChangedDate$
$URL$
$Copyright: (c) Simple Plugins 2008-2009$
*************************************************************************
*************************************************************************
*/

stock CreateVoteCommand()
{
	new String:sBuffer[64], String:sVoteCommand[64];
	GetTrieString(g_hSettings, "vote_trigger", sBuffer, sizeof(sBuffer));
	Format(sVoteCommand, sizeof(sVoteCommand), "sm_%s", sBuffer);
	RegConsoleCmd(sVoteCommand, Command_Vote, "Command used to start a vote to scramble the teams");
}

public Action:Command_Vote(client, args)
{

}