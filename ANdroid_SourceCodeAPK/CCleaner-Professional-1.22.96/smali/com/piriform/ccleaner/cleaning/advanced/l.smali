.class public final Lcom/piriform/ccleaner/cleaning/advanced/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/l;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public final startAdvancedCleaningService()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/l;->context:Landroid/content/Context;

    const-class v2, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/l;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 19
    return-void
.end method

.method public final stopAdvancedCleaningService()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/l;->context:Landroid/content/Context;

    const-class v2, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/k;->KILL_ADVANCED_CLEANING_SERVICE:Lcom/piriform/ccleaner/cleaning/advanced/k;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/cleaning/advanced/k;->value()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/l;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 25
    return-void
.end method
