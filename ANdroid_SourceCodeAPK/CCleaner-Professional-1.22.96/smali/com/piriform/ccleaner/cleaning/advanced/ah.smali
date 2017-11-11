.class interface abstract Lcom/piriform/ccleaner/cleaning/advanced/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract defaultStepValues()Lf/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/StepValue;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract deleteLogsByUserId(Ljava/lang/String;)V
.end method

.method public abstract insertLogsByUserId(Ljava/util/List;Ljava/lang/String;Lcom/piriform/ccleaner/cleaning/advanced/u;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/y;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/piriform/ccleaner/cleaning/advanced/u;",
            ")V"
        }
    .end annotation
.end method

.method public abstract remoteStepValues()Lf/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/StepValue;",
            ">;>;"
        }
    .end annotation
.end method
