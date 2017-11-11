.class public final Lcom/piriform/ccleaner/cleaning/advanced/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INTENT_EXTRA_ADVANCED_CLEANING_RESULT:Ljava/lang/String; = "whether advanced cleaning has successfully completed or not"

.field private static final INTENT_EXTRA_DEATH_NOTICE_REQUEST:Ljava/lang/String; = "command to request receiver of intent to stop this service"


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/q;->bundle:Landroid/os/Bundle;

    .line 32
    return-void
.end method

.method public static empty()Lcom/piriform/ccleaner/cleaning/advanced/q;
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/q;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/q;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static from(Landroid/os/Bundle;)Lcom/piriform/ccleaner/cleaning/advanced/q;
    .locals 1

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    invoke-static {}, Lcom/piriform/ccleaner/cleaning/advanced/q;->empty()Lcom/piriform/ccleaner/cleaning/advanced/q;

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/q;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/cleaning/advanced/q;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static from(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)Lcom/piriform/ccleaner/cleaning/advanced/q;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    const-string/jumbo v1, "whether advanced cleaning has successfully completed or not"

    invoke-virtual {p0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v1, "command to request receiver of intent to stop this service"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    new-instance v1, Lcom/piriform/ccleaner/cleaning/advanced/q;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/cleaning/advanced/q;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public final asBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/q;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final cleaningResult()Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/q;->bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "whether advanced cleaning has successfully completed or not"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    move-result-object v0

    return-object v0
.end method

.method public final hasResult()Z
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/q;->bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "whether advanced cleaning has successfully completed or not"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isStopService()Z
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/q;->bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "command to request receiver of intent to stop this service"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
