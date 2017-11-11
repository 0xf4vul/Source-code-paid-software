.class public final Lcom/piriform/ccleaner/cleaning/advanced/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Lf/a",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private databaseReference:Lcom/google/firebase/database/d;

.field private final genericTypeIndicator:Lcom/google/firebase/database/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/g",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/database/g;Lcom/google/firebase/database/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/g",
            "<TT;>;",
            "Lcom/google/firebase/database/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/t;->genericTypeIndicator:Lcom/google/firebase/database/g;

    .line 18
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/t;->databaseReference:Lcom/google/firebase/database/d;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/piriform/ccleaner/cleaning/advanced/t;)Lcom/google/firebase/database/g;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/t;->genericTypeIndicator:Lcom/google/firebase/database/g;

    return-object v0
.end method

.method static synthetic access$100(Lcom/piriform/ccleaner/cleaning/advanced/t;)Lcom/google/firebase/database/d;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/t;->databaseReference:Lcom/google/firebase/database/d;

    return-object v0
.end method


# virtual methods
.method public final call(Lf/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/t$1;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/t$1;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/t;Lf/a;)V

    .line 44
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/t;->databaseReference:Lcom/google/firebase/database/d;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/d;->a(Lcom/google/firebase/database/n;)V

    .line 45
    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lf/a;

    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/t;->call(Lf/a;)V

    return-void
.end method
