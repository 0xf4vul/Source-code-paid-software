.class final Lcom/piriform/ccleaner/o/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/o/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Lcom/piriform/ccleaner/l/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/o/f;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/o/f;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/piriform/ccleaner/o/f$3;->a:Lcom/piriform/ccleaner/o/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 79
    check-cast p1, Lcom/piriform/ccleaner/l/c;

    .line 1082
    iget-object v0, p0, Lcom/piriform/ccleaner/o/f$3;->a:Lcom/piriform/ccleaner/o/f;

    .line 2016
    iget-object v0, v0, Lcom/piriform/ccleaner/o/f;->b:Lcom/piriform/ccleaner/o/j;

    .line 1082
    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/o/j;->b(Lcom/piriform/ccleaner/l/c;)V

    .line 79
    return-void
.end method
