.class public final Lcom/piriform/ccleaner/ui/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/a/f;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/a/b;->a:Ljava/lang/Class;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/ui/a/c;Lcom/piriform/ccleaner/ui/a/j;)V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/b;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/b;->a:Ljava/lang/Class;

    .line 1022
    iget-object v1, p2, Lcom/piriform/ccleaner/ui/a/j;->a:Lcom/piriform/ccleaner/ui/a/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/piriform/ccleaner/ui/activity/MainActivity;

    if-eq v1, v2, :cond_1

    .line 1023
    iget-object v1, p2, Lcom/piriform/ccleaner/ui/a/j;->a:Lcom/piriform/ccleaner/ui/a/c;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/a/c;->finish()V

    .line 1026
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p2, Lcom/piriform/ccleaner/ui/a/j;->a:Lcom/piriform/ccleaner/ui/a/c;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1027
    const/high16 v0, 0x10000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1028
    iget-object v0, p2, Lcom/piriform/ccleaner/ui/a/j;->a:Lcom/piriform/ccleaner/ui/a/c;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/a/c;->startActivity(Landroid/content/Intent;)V

    .line 1029
    iget-object v0, p2, Lcom/piriform/ccleaner/ui/a/j;->a:Lcom/piriform/ccleaner/ui/a/c;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/ui/a/c;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public final a(Lcom/piriform/ccleaner/ui/a/c;)Z
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/b;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
