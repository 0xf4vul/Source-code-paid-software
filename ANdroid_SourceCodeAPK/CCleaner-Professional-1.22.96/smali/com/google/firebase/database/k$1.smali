.class final Lcom/google/firebase/database/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/k;->a(Lcom/google/firebase/database/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/database/n;

.field final synthetic b:Lcom/google/firebase/database/k;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/k;Lcom/google/firebase/database/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/k$1;->b:Lcom/google/firebase/database/k;

    iput-object p2, p0, Lcom/google/firebase/database/k$1;->a:Lcom/google/firebase/database/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Lcom/google/firebase/database/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/k$1;->a:Lcom/google/firebase/database/n;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/n;->onCancelled(Lcom/google/firebase/database/b;)V

    return-void
.end method

.method public final onDataChange(Lcom/google/firebase/database/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/k$1;->b:Lcom/google/firebase/database/k;

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/k;->b(Lcom/google/firebase/database/n;)V

    iget-object v0, p0, Lcom/google/firebase/database/k$1;->a:Lcom/google/firebase/database/n;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/n;->onDataChange(Lcom/google/firebase/database/a;)V

    return-void
.end method
