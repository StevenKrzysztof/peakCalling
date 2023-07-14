from sklearn.metrics import roc_curve, auc
import pandas as pd
import matplotlib.pyplot as plt



#for h3k27ac
macs3_data_h3k27ac = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/macs3_k562_h3k27ac_narrow.txt", delimiter='\t')
macs2_data_h3k27ac = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/macs2_k562_h3k27ac_narrow.txt", delimiter='\t')
epic2_data_h3k27ac = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/epic2_k562_h3k27ac.txt", delimiter='\t')
homer_data_h3k27ac = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/homer_k562_h3k27ac.txt", delimiter='\t')
macs3_data_h3k27ac_broad = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/macs3_k562_h3k27ac_broad.txt", delimiter='\t')
macs2_data_h3k27ac_broad = pd.read_csv("D:/peakCalling/gopeaks-compare-main/data/evaluate_models/macs2_k562_h3k27ac_broad.txt", delimiter='\t')

# Sort the data by increasing signal values
macs3_data_h3k27ac.sort_values('signal', inplace=True)
macs2_data_h3k27ac.sort_values('signal', inplace=True)
epic2_data_h3k27ac.sort_values('signal', inplace=True)
homer_data_h3k27ac.sort_values('signal', inplace=True)
macs3_data_h3k27ac_broad.sort_values('signal', inplace=True)
macs2_data_h3k27ac_broad.sort_values('signal', inplace=True)

# Calculate True Positive Rate (Recall)
tpr_macs3_data_h3k27ac = macs3_data_h3k27ac['recall']
tpr_macs2_data_h3k27ac = macs2_data_h3k27ac['recall']
tpr_epic2_data_h3k27ac = epic2_data_h3k27ac['recall']
tpr_homer_data_h3k27ac = homer_data_h3k27ac['recall']
tpr_macs3_data_h3k27ac_broad = macs3_data_h3k27ac_broad['recall']
tpr_macs2_data_h3k27ac_broad = macs2_data_h3k27ac_broad['recall']

# Calculate False Positive Rate
fpr_macs3_data_h3k27ac = macs3_data_h3k27ac['fpr']
fpr_macs2_data_h3k27ac = macs2_data_h3k27ac['fpr']
fpr_epic2_data_h3k27ac = epic2_data_h3k27ac['fpr']
fpr_homer_data_h3k27ac = homer_data_h3k27ac['fpr']
fpr_macs3_data_h3k27ac_broad = macs3_data_h3k27ac_broad['fpr']
fpr_macs2_data_h3k27ac_broad = macs2_data_h3k27ac_broad['fpr']

# precision
pre_macs3_data_h3k27ac = macs3_data_h3k27ac['precision']
pre_macs2_data_h3k27ac = macs2_data_h3k27ac['precision']
pre_epic2_data_h3k27ac = epic2_data_h3k27ac['precision']
pre_homer_data_h3k27ac = homer_data_h3k27ac['precision']
pre_macs3_data_h3k27ac_broad = macs3_data_h3k27ac_broad['precision']
pre_macs2_data_h3k27ac_broad = macs2_data_h3k27ac_broad['precision']

# Calculate Area Under the Curve (AUC)
auc_macs3_data_h3k27ac = auc(fpr_macs3_data_h3k27ac, tpr_macs3_data_h3k27ac)
auc_macs2_data_h3k27ac = auc(fpr_macs2_data_h3k27ac, tpr_macs2_data_h3k27ac)
auc_epic2_data_h3k27ac = auc(fpr_epic2_data_h3k27ac, tpr_epic2_data_h3k27ac)
auc_homer_data_h3k27ac = auc(fpr_homer_data_h3k27ac, tpr_homer_data_h3k27ac)
auc_macs3_data_h3k27ac_broad = auc(fpr_macs3_data_h3k27ac_broad, tpr_macs3_data_h3k27ac_broad)
auc_macs2_data_h3k27ac_broad = auc(fpr_macs2_data_h3k27ac_broad, tpr_macs2_data_h3k27ac_broad)


# Set the background color to gray
plt.rcParams['axes.facecolor'] = 'lightgray'

# Plot the ROC curve
plt.figure(figsize=(10, 6))

# # Plot MACS2 ROC curve
plt.plot(fpr_macs3_data_h3k27ac, tpr_macs3_data_h3k27ac, label=f"MACS3 narrow (AUC = {auc_macs3_data_h3k27ac:.2f})", linewidth=2, color='blue')

# Plot MACS3 ROC curve
plt.plot(fpr_macs2_data_h3k27ac, tpr_macs2_data_h3k27ac, label=f"MACS2 narrow (AUC = {auc_macs2_data_h3k27ac:.2f})", linewidth=2, color='red')

# Plot EPIC2 ROC curve
plt.plot(fpr_epic2_data_h3k27ac, tpr_epic2_data_h3k27ac, label=f"EPIC2 (AUC = {auc_epic2_data_h3k27ac:.2f})", linewidth=2, color='green')

# Plot homer ROC curve
plt.plot(fpr_homer_data_h3k27ac, tpr_homer_data_h3k27ac, label=f"HOMER (AUC = {auc_homer_data_h3k27ac:.2f})", linewidth=2, color='purple')

# # Plot MACS2 ROC curve
plt.plot(fpr_macs3_data_h3k27ac_broad, tpr_macs3_data_h3k27ac_broad, label=f"MACS3 broad (AUC = {auc_macs3_data_h3k27ac_broad:.2f})", linewidth=2, color='cyan')

# Plot MACS3 ROC curve
plt.plot(fpr_macs2_data_h3k27ac_broad, tpr_macs2_data_h3k27ac_broad, label=f"MACS2 broad (AUC = {auc_macs2_data_h3k27ac_broad:.2f})", linewidth=2, color='orange')



# Plot No Skill ROC curve
plt.plot([0, 1], [0, 1], linestyle='--', color='gray', label='No Skill')

# Set plot labels and title
plt.xlabel('False Positive Rate')
plt.ylabel('True Positive Rate (Recall)')
plt.title('ROC curve for h3k27ac')
plt.legend(loc='lower right')

# Show the plot
plt.show()



# Set the background color to gray
plt.rcParams['axes.facecolor'] = 'lightgray'

# Plot the Precision-Recall curve
plt.figure(figsize=(10, 6))

# Plot MACS3 Precision-Recall curve
plt.plot(tpr_macs3_data_h3k27ac, pre_macs3_data_h3k27ac, label=f"MACS3 narrow PR", linewidth=2, color='blue')

# Plot MACS2 Precision-Recall curve
plt.plot(tpr_macs2_data_h3k27ac, pre_macs2_data_h3k27ac, label=f"MACS2 narrow PR", linewidth=2, color='red')

# Plot EPIC2 Precision-Recall curve
plt.plot(tpr_epic2_data_h3k27ac, pre_epic2_data_h3k27ac, label=f"EPIC2 PR", linewidth=2, color='green')

# Plot HOMER Precision-Recall curve
plt.plot(tpr_homer_data_h3k27ac, pre_homer_data_h3k27ac, label=f"HOMER PR", linewidth=2, color='purple')

# Plot MACS3 Precision-Recall curve
plt.plot(tpr_macs3_data_h3k27ac_broad, pre_macs3_data_h3k27ac_broad, label=f"MACS3 broad PR", linewidth=2, color='cyan')

# Plot MACS2 Precision-Recall curve
plt.plot(tpr_macs2_data_h3k27ac_broad, pre_macs2_data_h3k27ac_broad, label=f"MACS2 broad PR", linewidth=2, color='orange')


# Set plot labels and title
plt.xlabel('Recall')
plt.ylabel('Precision')
plt.title('Precision-Recall curve for h3k27ac')
plt.legend(loc='lower left')

# Show the plot
plt.show()
