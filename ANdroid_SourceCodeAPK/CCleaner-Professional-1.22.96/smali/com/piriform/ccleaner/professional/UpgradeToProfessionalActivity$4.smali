.class final Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$4;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


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
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Lcom/piriform/ccleaner/b/b/b;",
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
    .line 164
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$4;->b:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    iput-object p2, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$4;->a:Lcom/piriform/ccleaner/professional/i;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 164
    .line 1167
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$4;->b:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$4;->a:Lcom/piriform/ccleaner/professional/i;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->a(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;Lcom/piriform/ccleaner/professional/i;)V

    .line 164
    return-void
.end method
