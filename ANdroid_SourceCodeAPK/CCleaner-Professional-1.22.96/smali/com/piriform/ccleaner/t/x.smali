.class public final Lcom/piriform/ccleaner/t/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/t/x$a;,
        Lcom/piriform/ccleaner/t/x$b;
    }
.end annotation


# instance fields
.field public a:F

.field public final b:Lcom/piriform/ccleaner/t/x$b;

.field public c:Lcom/piriform/ccleaner/t/x$a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/t/x$b;)V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Lcom/piriform/ccleaner/t/x$a;->a:Lcom/piriform/ccleaner/t/x$a;

    iput-object v0, p0, Lcom/piriform/ccleaner/t/x;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 137
    iput-object p1, p0, Lcom/piriform/ccleaner/t/x;->b:Lcom/piriform/ccleaner/t/x$b;

    .line 138
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/t/x;->b:Lcom/piriform/ccleaner/t/x$b;

    .line 1087
    iget v1, v1, Lcom/piriform/ccleaner/t/x$b;->q:I

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method
