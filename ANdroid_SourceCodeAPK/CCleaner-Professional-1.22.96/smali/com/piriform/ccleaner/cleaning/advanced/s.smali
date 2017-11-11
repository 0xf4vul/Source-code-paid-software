.class final Lcom/piriform/ccleaner/cleaning/advanced/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/cleaning/advanced/e;


# instance fields
.field private final failureReporter:Lcom/piriform/ccleaner/cleaning/advanced/ag;

.field private final listener:Lcom/piriform/ccleaner/cleaning/advanced/e$a;

.field private final nodeActions:Lcom/piriform/ccleaner/cleaning/advanced/ab;

.field private final settingsNavigator:Lcom/piriform/ccleaner/cleaning/advanced/af;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/ab;Lcom/piriform/ccleaner/cleaning/advanced/e$a;Lcom/piriform/ccleaner/cleaning/advanced/af;Lcom/piriform/ccleaner/cleaning/advanced/ag;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/s;->nodeActions:Lcom/piriform/ccleaner/cleaning/advanced/ab;

    .line 25
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/s;->listener:Lcom/piriform/ccleaner/cleaning/advanced/e$a;

    .line 26
    iput-object p3, p0, Lcom/piriform/ccleaner/cleaning/advanced/s;->settingsNavigator:Lcom/piriform/ccleaner/cleaning/advanced/af;

    .line 27
    iput-object p4, p0, Lcom/piriform/ccleaner/cleaning/advanced/s;->failureReporter:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    .line 28
    return-void
.end method

.method private reportStep(Lcom/piriform/ccleaner/cleaning/advanced/aa;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/piriform/ccleaner/cleaning/advanced/y;->from(Lcom/piriform/ccleaner/cleaning/advanced/aa;Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/piriform/ccleaner/cleaning/advanced/y;

    move-result-object v0

    .line 51
    iget-object v1, v0, Lcom/piriform/ccleaner/cleaning/advanced/y;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/s;->failureReporter:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/cleaning/advanced/ag;->record(Lcom/piriform/ccleaner/cleaning/advanced/y;)V

    goto :goto_0
.end method


# virtual methods
.method public final start()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/s;->settingsNavigator:Lcom/piriform/ccleaner/cleaning/advanced/af;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/af;->launchStorageSettings()V

    .line 33
    return-void
.end method

.method public final step(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/s;->nodeActions:Lcom/piriform/ccleaner/cleaning/advanced/ab;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/ab;->executeWith(Landroid/view/accessibility/AccessibilityEvent;)Lcom/piriform/ccleaner/cleaning/advanced/aa;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/s;->reportStep(Lcom/piriform/ccleaner/cleaning/advanced/aa;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 44
    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/aa;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/s;->listener:Lcom/piriform/ccleaner/cleaning/advanced/e$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/cleaning/advanced/e$a;->onWalkingCompleted()V

    .line 47
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/s;->failureReporter:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/ag;->reportIfFailure()V

    .line 38
    return-void
.end method
