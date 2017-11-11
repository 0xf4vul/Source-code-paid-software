.class final Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$5;
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
.field final synthetic a:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$5;->a:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    check-cast p1, Lcom/piriform/ccleaner/b/b/b;

    .line 1176
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$5;->a:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->a(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;Lcom/piriform/ccleaner/b/b/b;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 173
    return-object v0
.end method
