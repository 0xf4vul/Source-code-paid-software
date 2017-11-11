.class public interface abstract Lcom/piriform/ccleaner/l/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/piriform/ccleaner/l/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final i:Lcom/piriform/ccleaner/l/a;

.field public static final j:Lcom/piriform/ccleaner/l/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/l/a;->a(II)Lcom/piriform/ccleaner/l/a;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/l/c;->i:Lcom/piriform/ccleaner/l/a;

    .line 13
    new-instance v0, Lcom/piriform/ccleaner/l/b;

    sget-object v1, Lcom/piriform/ccleaner/l/c;->i:Lcom/piriform/ccleaner/l/a;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/l/b;-><init>(Lcom/piriform/ccleaner/l/a;)V

    sput-object v0, Lcom/piriform/ccleaner/l/c;->j:Lcom/piriform/ccleaner/l/c;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Long;
.end method

.method public abstract a(J)Ljava/util/Date;
.end method

.method public abstract a(Lcom/piriform/ccleaner/l/c;J)Z
.end method

.method public abstract b()Lcom/piriform/ccleaner/l/a;
.end method

.method public abstract c()Lcom/piriform/ccleaner/l/d;
.end method

.method public abstract d()Z
.end method

.method public abstract e()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/a/h;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f()Z
.end method

.method public abstract g()Ljava/lang/String;
.end method
