.class public final Lcom/piriform/ccleaner/t/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/piriform/ccleaner/t/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/t/j;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/piriform/ccleaner/t/i;->a:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/piriform/ccleaner/t/i;->b:Lcom/piriform/ccleaner/t/j;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    .line 1089
    iget-object v1, p0, Lcom/piriform/ccleaner/t/i;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x7f0800d4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0

    .line 1089
    :cond_0
    const v0, 0x7f0800d3

    goto :goto_0
.end method
