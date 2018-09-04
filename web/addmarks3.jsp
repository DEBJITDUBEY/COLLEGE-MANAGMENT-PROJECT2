<%-- 
    Document   : addmarks3
    Created on : Jul 31, 2018, 9:57:23 AM
    Author     : Debjit
--%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
							<section>
								<div class="modal-body modal-spa">
									<div class="login-grids">
										<div class="login">
											
											<div class="login-right">
                                                                                            
                                                                                            <form action="addmarks4.jsp">
                                                                                               <% out.println(rs.getString(1));%> 
                                                                                             
                                                                                                FIRST  SEASONAL	<input type="text" name="firstsessional" style="color:blue">
                                                                                                SECOND SEASONAL	<input type="text" name="secondsessional" style="color:blue">
                                                                                                <input type="hidden" name="name" value="<% out.println(rs.getString(1));%>">
                                                                                                 <input type="hidden" name="roll" value="<% out.println(rs.getString(5));%>">
                                                                                                 <input type="hidden" name="branch" value="<% out.println(rs.getString(3));%>">
                                                                                                  <input type="hidden" name="sec" value="<% out.println(rs.getString(4));%>">
                                                                                                    <input type="hidden" name="adyr" value="<% out.println(rs.getString(6));%>">
													<input type="submit" value="CREATE ACCOUNT">
												</form>
											</div>
												<div class="clearfix"></div>								
										</div>
											
									</div>
								</div>
							</section>
					</div>
				</div>
			</div>
        
         <input type="text" name="firstsessional" value="">
         <input type="text" name="secondsessional" value="">
          <input type="hidden" name="name" value="<% out.println(rs.getString(1));%>">
         <input type="hidden" name="roll" value="<% out.println(rs.getString(5));%>">
          <input type="hidden" name="branch" value="<% out.println(rs.getString(3));%>">
           <input type="hidden" name="sec" value="<% out.println(rs.getString(4));%>">
           
           <input type="hidden" name="adyr" value="<% out.println(rs.getString(6));%>">
           
          <input type="submit" value="Submit">