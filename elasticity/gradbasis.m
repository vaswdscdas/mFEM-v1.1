function [Dphi,area] = gradbasis(node,elem)

z1 = node(elem(:,1),:); z2 = node(elem(:,2),:); z3 = node(elem(:,3),:);
e1 = z2-z3; e2 = z3-z1; e3 = z1-z2;
area = 0.5*(-e3(:,1).*e2(:,2)+e3(:,2).*e2(:,1));

grad1 = [e1(:,2), -e1(:,1)]./(2*area); % stored in rows
grad2 = [e2(:,2), -e2(:,1)]./(2*area);
grad3 = -(grad1+grad2); 

NT = size(elem,1);
Dphi(1:NT,:,1) = grad1;
Dphi(1:NT,:,2) = grad2; 
Dphi(1:NT,:,3) = grad3; 







