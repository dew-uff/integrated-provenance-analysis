/**
 * e-Science Central
 * Copyright (C) 2008-2013 School of Computing Science, Newcastle University
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * version 2 as published by the Free Software Foundation at:
 * http://www.gnu.org/licenses/gpl-2.0.html
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, 5th Floor, Boston, MA 02110-1301, USA.
 */
package model.graph.nodes;

import model.graph.nodes.opm.Process;
import model.graph.relationships.ProvenanceRelationshipTypes;
import org.neo4j.graphdb.Direction;
import org.neo4j.graphdb.Node;
import org.neo4j.graphdb.Relationship;


public class WorkflowLock extends Process
{
  public static final String ESC_ID = "escId";
  public static final String INVOCATION_ID = "invocationId";
  public static final String START_TIME = "startTime";
  public static final String END_TIME = "endTime";

  public WorkflowLock(Node underlyingNode)
  {
    super(underlyingNode);
    this.underlyingNode.setProperty("TYPE", "Workflow Lock");

  }

  public void setEscId(String escId)
  {
    underlyingNode.setProperty(ESC_ID, escId);
  }

  public String getEscId()
  {
    return (String) underlyingNode.getProperty(ESC_ID);
  }

  public void setInvocationId(String invocationId)
  {
    underlyingNode.setProperty(INVOCATION_ID, invocationId);
  }

  public String getInvocationId()
  {
    return (String) underlyingNode.getProperty(INVOCATION_ID);
  }

  public void setStartTime(String startTime)
  {
    underlyingNode.setProperty(START_TIME, startTime);
  }

  public String getStartTime()
  {
    return (String) underlyingNode.getProperty(START_TIME);
  }

  public void setEndTime(String endTime)
  {
    underlyingNode.setProperty(END_TIME, endTime);
  }

  public String getEndTime()
  {
    return (String) underlyingNode.getProperty(END_TIME);
  }

}
