using FluentAssertions;
using Microsoft.AspNetCore.Authorization.Policy;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.AspNetCore.TestHost;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyInjection.Extensions;
using Moq;
using Revision_Part_1.Application.DTOs;
using Revision_Part_1.Domain.Entities;
using Revision_Part_1.Domain.Interfaces;
using System.Net;
using System.Net.Http.Json;

namespace Integration.Tests;

public class RestaurantControllerTests : IClassFixture<WebApplicationFactory<Program>>
{
    
}
