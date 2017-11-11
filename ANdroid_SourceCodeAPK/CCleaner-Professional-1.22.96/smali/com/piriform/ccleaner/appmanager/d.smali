.class public final Lcom/piriform/ccleaner/appmanager/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/appmanager/d$a;
    }
.end annotation


# instance fields
.field final a:[Lcom/piriform/ccleaner/appmanager/o;

.field b:Lcom/piriform/ccleaner/appmanager/d$a;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget v0, Lcom/piriform/ccleaner/appmanager/f;->d:I

    new-array v0, v0, [Lcom/piriform/ccleaner/appmanager/o;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    .line 14
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    new-instance v2, Lcom/piriform/ccleaner/appmanager/o;

    invoke-direct {v2, p1}, Lcom/piriform/ccleaner/appmanager/o;-><init>(Ljava/util/Comparator;)V

    aput-object v2, v1, v0

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    aget-object v0, v0, p1

    .line 1107
    if-nez p2, :cond_0

    .line 1108
    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/o;->a()V

    .line 1110
    :cond_0
    iget-object v0, v0, Lcom/piriform/ccleaner/appmanager/o;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v0, p2}, Lcom/piriform/ccleaner/q/c;->a(Z)V

    .line 77
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/d;->b:Lcom/piriform/ccleaner/appmanager/d$a;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/appmanager/d$a;->a(I)V

    .line 78
    return-void
.end method
