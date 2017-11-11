.class final Lcom/piriform/ccleaner/b/b/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/b/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/f",
        "<",
        "Lcom/piriform/ccleaner/b/b/b;",
        "Lcom/piriform/ccleaner/professional/m;",
        "Lcom/piriform/ccleaner/b/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/professional/g;

.field final synthetic b:Lcom/piriform/ccleaner/b/b/d;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/b/b/d;Lcom/piriform/ccleaner/professional/g;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/piriform/ccleaner/b/b/d$2;->b:Lcom/piriform/ccleaner/b/b/d;

    iput-object p2, p0, Lcom/piriform/ccleaner/b/b/d$2;->a:Lcom/piriform/ccleaner/professional/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 82
    check-cast p1, Lcom/piriform/ccleaner/b/b/b;

    check-cast p2, Lcom/piriform/ccleaner/professional/m;

    .line 1085
    new-instance v0, Lcom/piriform/ccleaner/b/b/d;

    iget-object v1, p0, Lcom/piriform/ccleaner/b/b/d$2;->a:Lcom/piriform/ccleaner/professional/g;

    invoke-direct {v0, p1, v1, p2}, Lcom/piriform/ccleaner/b/b/d;-><init>(Lcom/piriform/ccleaner/b/b/b;Lcom/piriform/ccleaner/professional/g;Lcom/piriform/ccleaner/professional/m;)V

    .line 82
    return-object v0
.end method
