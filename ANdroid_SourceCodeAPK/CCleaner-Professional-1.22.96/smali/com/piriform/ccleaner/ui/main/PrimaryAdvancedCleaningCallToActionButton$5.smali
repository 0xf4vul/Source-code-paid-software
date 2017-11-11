.class final Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$5;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$5;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->b(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$5;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->b(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$5;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->e(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$5;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->e(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$5;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->f(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$5;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->f(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$5;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->f(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "x"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 157
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 158
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 160
    :cond_2
    return-void

    .line 155
    nop

    :array_0
    .array-data 4
        0x0
        0x42c80000    # 100.0f
    .end array-data
.end method
