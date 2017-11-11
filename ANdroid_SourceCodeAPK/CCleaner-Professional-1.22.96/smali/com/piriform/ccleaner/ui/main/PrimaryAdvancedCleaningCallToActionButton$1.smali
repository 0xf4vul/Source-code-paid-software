.class final Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 78
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$1;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$1;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->a(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$1;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->b(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$1;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->b(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 84
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$1;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->c(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)V

    .line 86
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$1;->a:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->b:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->E:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 87
    return-void
.end method
