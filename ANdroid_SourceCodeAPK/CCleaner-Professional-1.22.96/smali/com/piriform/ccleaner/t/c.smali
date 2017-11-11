.class public final Lcom/piriform/ccleaner/t/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/piriform/ccleaner/t/d;

.field public final b:Lcom/piriform/ccleaner/s/j;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/t/d;Lcom/piriform/ccleaner/s/j;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/piriform/ccleaner/t/c;->a:Lcom/piriform/ccleaner/t/d;

    .line 21
    iput-object p2, p0, Lcom/piriform/ccleaner/t/c;->b:Lcom/piriform/ccleaner/s/j;

    .line 22
    iput-object p3, p0, Lcom/piriform/ccleaner/t/c;->c:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;I)Lcom/piriform/ccleaner/t/b;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/piriform/ccleaner/t/b;

    iget-object v1, p0, Lcom/piriform/ccleaner/t/c;->c:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/piriform/ccleaner/t/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
