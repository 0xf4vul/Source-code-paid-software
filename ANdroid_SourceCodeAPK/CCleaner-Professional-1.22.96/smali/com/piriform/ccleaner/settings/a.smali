.class public final Lcom/piriform/ccleaner/settings/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Lcom/piriform/ccleaner/b/e;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/b/e;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/a;->a:Landroid/content/Context;

    .line 19
    const v0, 0x7f0801d1

    iput v0, p0, Lcom/piriform/ccleaner/settings/a;->b:I

    .line 20
    iput-object p2, p0, Lcom/piriform/ccleaner/settings/a;->c:Lcom/piriform/ccleaner/b/e;

    .line 21
    return-void
.end method
