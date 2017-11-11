.class final Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Lcom/piriform/ccleaner/b/b/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/professional/i;

.field final synthetic b:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;Lcom/piriform/ccleaner/professional/i;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$6;->b:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    iput-object p2, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$6;->a:Lcom/piriform/ccleaner/professional/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 186
    .line 1189
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$6;->b:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->b(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$6;->a:Lcom/piriform/ccleaner/professional/i;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 186
    return-object v0

    .line 1189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
