from sklearn.metrics import roc_curve, auc
import pandas as pd
import matplotlib.pyplot as plt



#for ctcf
epic2_data_ctcf = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/epic2_k562_ctcf.txt", delimiter='\t')
macs3_pe_ctcf = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/macs3_k562_ctcf.txt", delimiter='\t')
macs2_pe_ctcf = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/macs3_k562_ctcf.txt", delimiter='\t')
macs3_peb_ctcf = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/macs3_k562_ctcf_broad.txt", delimiter='\t')
macs2_peb_ctcf = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/macs2_k562_ctcf_broad.txt", delimiter='\t')

# Sort the data by increasing signal values
epic2_data_ctcf.sort_values('signal', inplace=True)
macs3_pe_ctcf.sort_values('signal', inplace=True)
macs2_pe_ctcf.sort_values('signal', inplace=True)
macs3_peb_ctcf.sort_values('signal', inplace=True)
macs2_peb_ctcf.sort_values('signal', inplace=True)

# Calculate True Positive Rate (Recall)
tpr_epic2_data_ctcf = epic2_data_ctcf['recall']
tpr_macs3_pe_ctcf = macs3_pe_ctcf['recall']
tpr_macs2_pe_ctcf = macs2_pe_ctcf['recall']
tpr_macs3_peb_ctcf = macs3_peb_ctcf['recall']
tpr_macs2_peb_ctcf = macs2_peb_ctcf['recall']

# Calculate False Positive Rate
fpr_epic2_data_ctcf = epic2_data_ctcf['fpr']
fpr_macs3_pe_ctcf = macs3_pe_ctcf['fpr']
fpr_macs2_pe_ctcf = macs2_pe_ctcf['fpr']
fpr_macs3_peb_ctcf = macs3_peb_ctcf['fpr']
fpr_macs2_peb_ctcf = macs2_peb_ctcf['fpr']

# precision
pre_epic2_data_ctcf = epic2_data_ctcf['precision']
pre_macs3_pe_ctcf = macs3_pe_ctcf['precision']
pre_macs2_pe_ctcf = macs2_pe_ctcf['precision']
pre_macs3_peb_ctcf = macs3_peb_ctcf['precision']
pre_macs2_peb_ctcf = macs2_peb_ctcf['precision']

# Calculate Area Under the Curve (AUC)
auc_epic2_data_ctcf = auc(fpr_epic2_data_ctcf, tpr_epic2_data_ctcf)
auc_macs3_pe_ctcf = auc(fpr_macs3_pe_ctcf, tpr_macs3_pe_ctcf)
auc_macs2_pe_ctcf = auc(fpr_macs2_pe_ctcf, tpr_macs2_pe_ctcf)
auc_macs3_peb_ctcf = auc(fpr_macs3_peb_ctcf, tpr_macs3_peb_ctcf)
auc_macs2_peb_ctcf = auc(fpr_macs2_peb_ctcf, tpr_macs2_peb_ctcf)


# Set the background color to gray
plt.rcParams['axes.facecolor'] = 'lightgray'

# Plot the ROC curve
plt.figure(figsize=(10, 6))


# Plot EPIC2 ROC curve
plt.plot(fpr_epic2_data_ctcf, tpr_epic2_data_ctcf, label=f"EPIC2 (AUC = {auc_epic2_data_ctcf:.2f})", linewidth=2, color='green')


# Plot MACS2 ROC curve
plt.plot(fpr_macs3_pe_ctcf, tpr_macs3_pe_ctcf, label=f"MACS3 (AUC = {auc_macs3_pe_ctcf:.2f})", linewidth=2, color='c')

# Plot MACS3 ROC curve
plt.plot(fpr_macs2_pe_ctcf, tpr_macs2_pe_ctcf, label=f"MACS2 (AUC = {auc_macs2_pe_ctcf:.2f})", linewidth=2, color='m')

# Plot MACS2 ROC curve
plt.plot(fpr_macs3_peb_ctcf, tpr_macs3_peb_ctcf, label=f"MACS3 broad(AUC = {auc_macs3_peb_ctcf:.2f})", linewidth=2, color='y')

# Plot MACS3 ROC curve
plt.plot(fpr_macs2_peb_ctcf, tpr_macs2_peb_ctcf, label=f"MACS2 broad(AUC = {auc_macs2_peb_ctcf:.2f})", linewidth=2, color='brown')

# Plot No Skill ROC curve
plt.plot([0, 1], [0, 1], linestyle='--', color='gray', label='No Skill')

# Set plot labels and title
plt.xlabel('False Positive Rate')
plt.ylabel('True Positive Rate (Recall)')
plt.title('ROC curve for ctcf')
plt.legend(loc='lower right')

# Show the plot
plt.show()



# Set the background color to gray
plt.rcParams['axes.facecolor'] = 'lightgray'

# Plot the Precision-Recall curve
plt.figure(figsize=(10, 6))

# Plot EPIC2 Precision-Recall curve
plt.plot(tpr_epic2_data_ctcf, pre_epic2_data_ctcf, label=f"EPIC2 PR", linewidth=2, color='green')


# Plot MACS3 Precision-Recall curve
plt.plot(tpr_macs3_pe_ctcf, pre_macs3_pe_ctcf, label=f"MACS3 PR", linewidth=2, color='c')

# Plot MACS2 Precision-Recall curve
plt.plot(tpr_macs2_pe_ctcf, pre_macs2_pe_ctcf, label=f"MACS2 PR", linewidth=2, color='m')

# Plot MACS3 Precision-Recall curve
plt.plot(tpr_macs3_peb_ctcf, pre_macs3_peb_ctcf, label=f"MACS3 broad PR", linewidth=2, color='y')

# Plot MACS2 Precision-Recall curve
plt.plot(tpr_macs2_peb_ctcf, pre_macs2_peb_ctcf, label=f"MACS2 broad PR", linewidth=2, color='brown')


# Set plot labels and title
plt.xlabel('Recall')
plt.ylabel('Precision')
plt.title('Precision-Recall curve for ctcf')
plt.legend(loc='lower left')

# Show the plot
plt.show()
