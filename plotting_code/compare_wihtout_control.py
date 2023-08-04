#select the samples: macs2, macs3 we all use the broad mode here. Because the performance of narrow is really poor

from sklearn.metrics import roc_curve, auc
import pandas as pd
import matplotlib.pyplot as plt



#for h3k4me1
macs3_data_h3k4me1_ = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/macs3_k562_h3k4me1.txt", delimiter='\t')
macs2_data_h3k4me1_ = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/macs3_k562_h3k4me1.txt", delimiter='\t')
macs3_data_h3k4me1_broad = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/macs3_k562_h3k4me1_broad.txt", delimiter='\t')
macs2_data_h3k4me1_broad = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/macs2_k562_h3k4me1_broad.txt", delimiter='\t')
macs3_pe_h3k4me1 = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/macs3_k562_h3k4me1pew.txt", delimiter='\t')
macs2_pe_h3k4me1 = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/macs2_k562_h3k4me1pew.txt", delimiter='\t')
macs3_peb_h3k4me1 = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/finalversion1/macs3_k562_h3k4me1pewb.txt", delimiter='\t')
macs2_peb_h3k4me1 = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/finalversion1/macs2_k562_h3k4me1pewb.txt", delimiter='\t')

# Sort the data by increasing signal values
macs3_data_h3k4me1_.sort_values('signal', inplace=True)
macs2_data_h3k4me1_.sort_values('signal', inplace=True)
macs3_data_h3k4me1_broad.sort_values('signal', inplace=True)
macs2_data_h3k4me1_broad.sort_values('signal', inplace=True)
macs3_pe_h3k4me1.sort_values('signal', inplace=True)
macs2_pe_h3k4me1.sort_values('signal', inplace=True)
macs3_peb_h3k4me1.sort_values('signal', inplace=True)
macs2_peb_h3k4me1.sort_values('signal', inplace=True)

# Calculate True Positive Rate (Recall)
tpr_macs3_data_h3k4me1_ = macs3_data_h3k4me1_['recall']
tpr_macs2_data_h3k4me1_ = macs2_data_h3k4me1_['recall']
tpr_macs3_data_h3k4me1_broad = macs3_data_h3k4me1_broad['recall']
tpr_macs2_data_h3k4me1_broad = macs2_data_h3k4me1_broad['recall']
tpr_macs3_pe_h3k4me1 = macs3_pe_h3k4me1['recall']
tpr_macs2_pe_h3k4me1 = macs2_pe_h3k4me1['recall']
tpr_macs3_peb_h3k4me1 = macs3_peb_h3k4me1['recall']
tpr_macs2_peb_h3k4me1 = macs2_peb_h3k4me1['recall']

# Calculate False Positive Rate
fpr_macs3_data_h3k4me1_ = macs3_data_h3k4me1_['fpr']
fpr_macs2_data_h3k4me1_ = macs2_data_h3k4me1_['fpr']
fpr_macs3_data_h3k4me1_broad = macs3_data_h3k4me1_broad['fpr']
fpr_macs2_data_h3k4me1_broad = macs2_data_h3k4me1_broad['fpr']
fpr_macs3_pe_h3k4me1 = macs3_pe_h3k4me1['fpr']
fpr_macs2_pe_h3k4me1 = macs2_pe_h3k4me1['fpr']
fpr_macs3_peb_h3k4me1 = macs3_peb_h3k4me1['fpr']
fpr_macs2_peb_h3k4me1 = macs2_peb_h3k4me1['fpr']

# precision
pre_macs3_data_h3k4me1_ = macs3_data_h3k4me1_['precision']
pre_macs2_data_h3k4me1_ = macs2_data_h3k4me1_['precision']
pre_macs3_data_h3k4me1_broad = macs3_data_h3k4me1_broad['precision']
pre_macs2_data_h3k4me1_broad = macs2_data_h3k4me1_broad['precision']
pre_macs3_pe_h3k4me1 = macs3_pe_h3k4me1['precision']
pre_macs2_pe_h3k4me1 = macs2_pe_h3k4me1['precision']
pre_macs3_peb_h3k4me1 = macs3_peb_h3k4me1['precision']
pre_macs2_peb_h3k4me1 = macs2_peb_h3k4me1['precision']


# Calculate Area Under the Curve (AUC)
auc_macs3_data_h3k4me1_ = auc(fpr_macs3_data_h3k4me1_, tpr_macs3_data_h3k4me1_)
auc_macs2_data_h3k4me1_ = auc(fpr_macs2_data_h3k4me1_, tpr_macs2_data_h3k4me1_)
auc_macs3_data_h3k4me1_broad = auc(fpr_macs3_data_h3k4me1_broad, tpr_macs3_data_h3k4me1_broad)
auc_macs2_data_h3k4me1_broad = auc(fpr_macs2_data_h3k4me1_broad, tpr_macs2_data_h3k4me1_broad)
auc_macs3_pe_h3k4me1 = auc(fpr_macs3_pe_h3k4me1, tpr_macs3_pe_h3k4me1)
auc_macs2_pe_h3k4me1 = auc(fpr_macs2_pe_h3k4me1, tpr_macs2_pe_h3k4me1)
auc_macs3_peb_h3k4me1 = auc(fpr_macs3_peb_h3k4me1, tpr_macs3_peb_h3k4me1)
auc_macs2_peb_h3k4me1 = auc(fpr_macs2_peb_h3k4me1, tpr_macs2_peb_h3k4me1)


# Set the background color to gray
plt.rcParams['axes.facecolor'] = 'lightgray'

# Plot the ROC curve
plt.figure(figsize=(10, 6))

# # Plot MACS2 ROC curve
plt.plot(fpr_macs3_data_h3k4me1_, tpr_macs3_data_h3k4me1_, label=f"MACS3 (AUC = {auc_macs3_data_h3k4me1_:.2f})", linewidth=2, color='blue')

# Plot MACS3 ROC curve
plt.plot(fpr_macs2_data_h3k4me1_, tpr_macs2_data_h3k4me1_, label=f"MACS2 (AUC = {auc_macs2_data_h3k4me1_:.2f})", linewidth=2, color='red')


# # Plot MACS2 ROC curve
plt.plot(fpr_macs3_data_h3k4me1_broad, tpr_macs3_data_h3k4me1_broad, label=f"MACS3 broad (AUC = {auc_macs3_data_h3k4me1_broad:.2f})", linewidth=2, color='cyan')

# Plot MACS3 ROC curve
plt.plot(fpr_macs2_data_h3k4me1_broad, tpr_macs2_data_h3k4me1_broad, label=f"MACS2 broad (AUC = {auc_macs2_data_h3k4me1_broad:.2f})", linewidth=2, color='orange')

# # Plot MACS2 ROC curve
plt.plot(fpr_macs3_pe_h3k4me1, tpr_macs3_pe_h3k4me1, label=f"MACS3 without (AUC = {auc_macs3_pe_h3k4me1:.2f})", linewidth=2, color='c')

# Plot MACS3 ROC curve
plt.plot(fpr_macs2_pe_h3k4me1, tpr_macs2_pe_h3k4me1, label=f"MACS2 without (AUC = {auc_macs2_pe_h3k4me1:.2f})", linewidth=2, color='m')

# # Plot MACS2 ROC curve
plt.plot(fpr_macs3_peb_h3k4me1, tpr_macs3_peb_h3k4me1, label=f"MACS3 without broad(AUC = {auc_macs3_peb_h3k4me1:.2f})", linewidth=2, color='y')

# Plot MACS3 ROC curve
plt.plot(fpr_macs2_peb_h3k4me1, tpr_macs2_peb_h3k4me1, label=f"MACS2 without broad(AUC = {auc_macs2_peb_h3k4me1:.2f})", linewidth=2, color='brown')

# Plot No Skill ROC curve
plt.plot([0, 1], [0, 1], linestyle='--', color='gray', label='No Skill')

# Set plot labels and title
plt.xlabel('False Positive Rate')
plt.ylabel('True Positive Rate (Recall)')
plt.title('ROC curve for h3k4me1')
plt.legend(loc='lower right')

# Show the plot
plt.show()



# Set the background color to gray
plt.rcParams['axes.facecolor'] = 'lightgray'

# Plot the Precision-Recall curve
plt.figure(figsize=(10, 6))

# Plot MACS3 Precision-Recall curve
plt.plot(tpr_macs3_data_h3k4me1_, pre_macs3_data_h3k4me1_, label=f"MACS3 PR", linewidth=2, color='blue')

# Plot MACS2 Precision-Recall curve
plt.plot(tpr_macs2_data_h3k4me1_, pre_macs2_data_h3k4me1_, label=f"MACS2 PR", linewidth=2, color='red')


# Plot MACS3 Precision-Recall curve
plt.plot(tpr_macs3_data_h3k4me1_broad, pre_macs3_data_h3k4me1_broad, label=f"MACS3 broad PR", linewidth=2, color='cyan')

# Plot MACS2 Precision-Recall curve
plt.plot(tpr_macs2_data_h3k4me1_broad, pre_macs2_data_h3k4me1_broad, label=f"MACS2 broad PR", linewidth=2, color='orange')

# Plot MACS3 Precision-Recall curve
plt.plot(tpr_macs3_pe_h3k4me1, pre_macs3_pe_h3k4me1, label=f"MACS3 without PR", linewidth=2, color='c')

# Plot MACS2 Precision-Recall curve
plt.plot(tpr_macs2_pe_h3k4me1, pre_macs2_pe_h3k4me1, label=f"MACS2 without PR", linewidth=2, color='m')

# Plot MACS3 Precision-Recall curve
plt.plot(tpr_macs3_peb_h3k4me1, pre_macs3_peb_h3k4me1, label=f"MACS3 without broad PR", linewidth=2, color='y')

# Plot MACS2 Precision-Recall curve
plt.plot(tpr_macs2_peb_h3k4me1, pre_macs2_peb_h3k4me1, label=f"MACS2 without broad PR", linewidth=2, color='brown')

# Set plot labels and title
plt.xlabel('Recall')
plt.ylabel('Precision')
plt.title('Precision-Recall curve for h3k4me1')
plt.legend(loc='lower left')

# Show the plot
plt.show()
