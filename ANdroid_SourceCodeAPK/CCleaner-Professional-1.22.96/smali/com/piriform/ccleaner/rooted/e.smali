.class public final Lcom/piriform/ccleaner/rooted/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/piriform/ccleaner/appmanager/k;

.field public final c:Lcom/piriform/ccleaner/rooted/l$a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/appmanager/k;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/piriform/ccleaner/rooted/e;->b:Lcom/piriform/ccleaner/appmanager/k;

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/rooted/e;->a:Ljava/util/Queue;

    .line 1037
    new-instance v0, Lcom/piriform/ccleaner/rooted/e$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/rooted/e$1;-><init>(Lcom/piriform/ccleaner/rooted/e;)V

    .line 21
    iput-object v0, p0, Lcom/piriform/ccleaner/rooted/e;->c:Lcom/piriform/ccleaner/rooted/l$a;

    .line 22
    return-void
.end method
