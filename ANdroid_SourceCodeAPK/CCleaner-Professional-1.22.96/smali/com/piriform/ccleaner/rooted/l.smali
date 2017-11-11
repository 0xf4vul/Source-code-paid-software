.class final Lcom/piriform/ccleaner/rooted/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/rooted/l$a;
    }
.end annotation


# instance fields
.field final a:Z

.field final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/piriform/ccleaner/rooted/l;->a:Z

    .line 21
    iput-object p2, p0, Lcom/piriform/ccleaner/rooted/l;->b:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/piriform/ccleaner/rooted/l;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/piriform/ccleaner/rooted/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/piriform/ccleaner/rooted/l;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method static b(Ljava/lang/String;)Lcom/piriform/ccleaner/rooted/l;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/piriform/ccleaner/rooted/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/piriform/ccleaner/rooted/l;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
